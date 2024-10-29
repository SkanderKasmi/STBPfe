using FluentValidation;
using MediatR;
using Signature.API.Infrastructure.Repositories;
using System.ComponentModel.DataAnnotations;

namespace Signature.API.Signatures.GetClientInfo
{

    public class GetClientInfoQuery : IRequest<ClientDetails>
    {
        public Guid ClientId { get; set; }
    }
    public class GetClientInfoQueryValidator : AbstractValidator<GetClientInfoQuery>
    {
        public GetClientInfoQueryValidator()
        {
            RuleFor(x => x.ClientId)
                .NotEmpty().WithMessage("ClientId is required.");
        }
    }

    public class GetClientInfoQueryHandler : IRequestHandler<GetClientInfoQuery, ClientDetails>
    {


        private readonly IDocumentUploadRepository _documentUploadRepository;
        private readonly IAccountCreationRepository _accountCreationRepository ;
        private readonly IClientRepository _clientRepository ;
        private readonly IValidator<GetClientInfoQuery> _validator;

        public GetClientInfoQueryHandler(IDocumentUploadRepository documentUploadRepository, IAccountCreationRepository accountCreationRepository, IClientRepository clientRepository, IValidator<GetClientInfoQuery> validator)
        {
            _documentUploadRepository = documentUploadRepository ?? throw new ArgumentNullException(nameof(documentUploadRepository));
            _accountCreationRepository = accountCreationRepository ?? throw new ArgumentNullException(nameof(accountCreationRepository));
            _clientRepository = clientRepository ?? throw new ArgumentNullException(nameof(clientRepository));
            _validator = validator;
        }



        public async Task<ClientDetails> Handle(GetClientInfoQuery request, CancellationToken cancellationToken)
        {
            var validationResult = await _validator.ValidateAsync(request, cancellationToken);

            if (!validationResult.IsValid)
            {
                // Handle validation errors (e.g., throw an exception or return a specific result)
                throw new FluentValidation.ValidationException(validationResult.Errors);
            }

            var clientdetails = new ClientDetails();

            clientdetails.ClientDocument = await _documentUploadRepository.GetClientDocumentsAsync(request.ClientId);
            clientdetails.Client = await _clientRepository.GetByIdAsync(request.ClientId);
            clientdetails.AccountCreation = await _accountCreationRepository.GetByClientIdAsync(request.ClientId);

            return clientdetails; 
        }
    }
}
