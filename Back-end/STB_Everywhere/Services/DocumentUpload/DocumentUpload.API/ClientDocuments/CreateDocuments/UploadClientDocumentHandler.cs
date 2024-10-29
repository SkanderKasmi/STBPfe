using DocumentUpload.API.Infrastructure.Persistence;
using DocumentUpload.API.Models;
using FluentValidation;
using MediatR;

namespace DocumentUpload.API.ClientDocuments.CreateDocuments
{

    public class UploadClientDocumentCommand : IRequest<Guid>
    {
        public Guid ClientId { get; set; }
        public int CIN { get; set; }
        public DateTime DateCIN { get; set; }
        public IFormFile CINImage1 { get; set; }
        public IFormFile CINImage2 { get; set; }
        public IFormFile Selfie { get; set; }
    }

    public class UploadClientDocumentHandler : IRequestHandler<UploadClientDocumentCommand, Guid>
    {
        private readonly DocumentUploadContext _context;
        private readonly IValidator<UploadClientDocumentCommand> _validator;

        public UploadClientDocumentHandler(IValidator<UploadClientDocumentCommand> validator, DocumentUploadContext context)
        {
            _context = context;
            _validator = validator;
        }

        public async Task<Guid> Handle(UploadClientDocumentCommand request, CancellationToken cancellationToken)
        {

            var validationResult = await _validator.ValidateAsync(request, cancellationToken);

            if (!validationResult.IsValid)
            {
                // Handle validation errors (e.g., throw an exception or return a specific result)
                throw new ValidationException(validationResult.Errors);
            }

            var clientDocument = new ClientDocument
            {
                ClientId = request.ClientId,
                CIN = request.CIN,
                DateCIN = request.DateCIN,
                CINImage1 = request.CINImage1?.FileName,
                CINImageData1 = await GetFileBytes(request.CINImage1),
                CINImage2 = request.CINImage2?.FileName,
                CINImageData2 = await GetFileBytes(request.CINImage2),
                Selfie = request.Selfie?.FileName,
                SelfieData = await GetFileBytes(request.Selfie)
            };

            _context.ClientDocuments.Add(clientDocument);
            await _context.SaveChangesAsync(cancellationToken);

            return clientDocument.ClientId;
        }

        private async Task<byte[]> GetFileBytes(IFormFile file)
        {
            if (file == null)
                return null;

            using (var memoryStream = new MemoryStream())
            {
                await file.CopyToAsync(memoryStream);
                return memoryStream.ToArray();
            }
        }

        public class UploadClientDocumentCommandValidator : AbstractValidator<UploadClientDocumentCommand>
        {
            public UploadClientDocumentCommandValidator()
            {
                RuleFor(x => x.ClientId)
                    .NotEmpty().WithMessage("ClientId is required.");

                RuleFor(x => x.CIN)
                    .GreaterThan(0).WithMessage("CIN must be greater than 0.");

                RuleFor(x => x.DateCIN)
                    .LessThanOrEqualTo(DateTime.Now).WithMessage("DateCIN must be in the past or present.");

                RuleFor(x => x.CINImage1)
                    .NotNull().WithMessage("CINImage1 is required.")
                    .Must(BeAValidImage).WithMessage("CINImage1 must be a valid image file.");

                RuleFor(x => x.CINImage2)
                    .NotNull().WithMessage("CINImage2 is required.")
                    .Must(BeAValidImage).WithMessage("CINImage2 must be a valid image file.");

                RuleFor(x => x.Selfie)
                    .NotNull().WithMessage("Selfie is required.")
                    .Must(BeAValidImage).WithMessage("Selfie must be a valid image file.");
            }

            private bool BeAValidImage(IFormFile file)
            {
                // Check if the file is a valid image (e.g., by checking the file extension or content type)
                var validImageTypes = new[] { "image/jpeg", "image/png", "image/gif" };
                return validImageTypes.Contains(file.ContentType);
            }
        }
    }
}
