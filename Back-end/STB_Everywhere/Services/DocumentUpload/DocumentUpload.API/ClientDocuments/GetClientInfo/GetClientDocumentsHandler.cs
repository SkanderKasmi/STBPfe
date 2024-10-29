using DocumentUpload.API.Infrastructure.Repositories;
using DocumentUpload.API.Models;
using FluentValidation;
using MediatR;
using static DocumentUpload.API.ClientDocuments.GetClientInfo.GetClientDocumentsHandler;

namespace DocumentUpload.API.ClientDocuments.GetClientInfo
{
    public class GetClientDocumentsHandler : IRequestHandler<GetClientDocumentsQuery, List<ClientDocument>>
    {
        private readonly IDocumentUploadRepository _documentUploadRepository;
        private readonly IValidator<GetClientDocumentsQuery> _validator;

        public GetClientDocumentsHandler(IValidator<GetClientDocumentsQuery> validator, IDocumentUploadRepository documentUploadRepository)
        {
            _validator = validator;
            _documentUploadRepository = documentUploadRepository ?? throw new ArgumentNullException(nameof(documentUploadRepository));
        }

       
        

        public async Task<List<ClientDocument>> Handle(GetClientDocumentsQuery request, CancellationToken cancellationToken)
        {
            var validationResult = await _validator.ValidateAsync(request, cancellationToken);

            if (!validationResult.IsValid)
            {
                // Handle validation errors (e.g., throw an exception or return a specific result)
                throw new ValidationException(validationResult.Errors);
            }

            return await  _documentUploadRepository.GetClientDocumentsAsync(request.ClientId);
        }

       
        

        public class GetClientDocumentsQuery : IRequest<List<ClientDocument>>
        {
            public Guid ClientId { get; set; }
        }

        public class GetClientDocumentsQueryValidator : AbstractValidator<GetClientDocumentsQuery>
        {
            public GetClientDocumentsQueryValidator()
            {
                RuleFor(x => x.ClientId)
                    .NotEmpty().WithMessage("ClientId is required.");
            }
        }
    }
}
