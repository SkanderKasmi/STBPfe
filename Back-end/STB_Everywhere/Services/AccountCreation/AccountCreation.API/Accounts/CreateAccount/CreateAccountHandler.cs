using AccountCreation.API.Infrastructure.Repositories;
using AccountCreation.API.Models;
using Carter;
using CQRS;
using FluentValidation;
using MediatR;


namespace AccountCreation.API.Accounts.CreateAccount
{

    public record CreateAccountCommand(

        Guid ClientId, 
        string Nationality,
        string OtherNationality,
        string CivilState,
        string ProfessionalStatus,
        string ActivityNature,
        string FieldOfProfession,
        decimal NetIncome, 
        decimal OtherIncome, 
        bool PPE, 
        string PoliticalFunction
        
        ): ICommand<CreateAccountResult>;



    public record CreateAccountResult(Guid Id);



    public class CreateAccountHandler : ICommandHandler<CreateAccountCommand, CreateAccountResult>
    {

        private readonly IAccountCreationRepository _accountCreationRepository;
        private readonly IValidator<CreateAccountCommand> _validator;

        public CreateAccountHandler(IValidator<CreateAccountCommand> validator, IAccountCreationRepository accountCreationRepository )
        {
            _accountCreationRepository = accountCreationRepository;
            _validator = validator;
        }

        public async Task<CreateAccountResult> Handle(CreateAccountCommand request, CancellationToken cancellationToken)
        {
            var validationResult = await _validator.ValidateAsync(request, cancellationToken);

            if (!validationResult.IsValid)
            {
                throw new ValidationException(validationResult.Errors);
            }


            var account = new AccountCreationEntity
            {
                ClientId = request.ClientId,
                Nationality = request.Nationality,
                OtherNationality = request.OtherNationality,
                CivilState = request.CivilState,
                ProfessionalStatus = request.ProfessionalStatus,
                ActivityNature = request.ActivityNature,
                FieldOfProfession = request.FieldOfProfession,
                NetIncome = request.NetIncome,
                OtherIncome = request.OtherIncome,
                PPE = request.PPE,
                PoliticalFunction = request.PoliticalFunction
            };

            //save to database
            await _accountCreationRepository.AddAsync(account );

            //return result
            return new CreateAccountResult(account.Id);
        }


        public class CreateAccountCommandValidator : AbstractValidator<CreateAccountCommand>
        {
            public CreateAccountCommandValidator()
            {
                RuleFor(x => x.ClientId)
                    .NotEmpty().WithMessage("ClientId is required.");

                RuleFor(x => x.Nationality)
                    .NotEmpty().WithMessage("Nationality is required.")
                    .MaximumLength(100).WithMessage("Nationality cannot be longer than 100 characters.");

                RuleFor(x => x.OtherNationality)
                    .MaximumLength(100).WithMessage("Other Nationality cannot be longer than 100 characters.");

                RuleFor(x => x.CivilState)
                    .NotEmpty().WithMessage("Civil State is required.")
                    .MaximumLength(50).WithMessage("Civil State cannot be longer than 50 characters.");

                RuleFor(x => x.ProfessionalStatus)
                    .NotEmpty().WithMessage("Professional Status is required.")
                    .MaximumLength(100).WithMessage("Professional Status cannot be longer than 100 characters.");

                RuleFor(x => x.ActivityNature)
                    .NotEmpty().WithMessage("Activity Nature is required.")
                    .MaximumLength(100).WithMessage("Activity Nature cannot be longer than 100 characters.");

                RuleFor(x => x.FieldOfProfession)
                    .NotEmpty().WithMessage("Field Of Profession is required.")
                    .MaximumLength(100).WithMessage("Field Of Profession cannot be longer than 100 characters.");

                RuleFor(x => x.NetIncome)
                    .GreaterThan(0).WithMessage("Net Income must be greater than 0.");

                RuleFor(x => x.OtherIncome)
                    .GreaterThanOrEqualTo(0).WithMessage("Other Income must be greater than or equal to 0.");

                RuleFor(x => x.PPE)
                    .NotNull().WithMessage("PPE is required.");

                RuleFor(x => x.PoliticalFunction)
                    .MaximumLength(100).WithMessage("Political Function cannot be longer than 100 characters.");
            }
        }

    }
}
