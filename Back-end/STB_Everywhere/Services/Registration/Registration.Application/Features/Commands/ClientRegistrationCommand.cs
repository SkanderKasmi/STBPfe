using FluentValidation;
using MediatR;
using Registration.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Registration.Application.Features.Commands
{
    public class ClientRegistrationCommand : IRequest<Unit>
    {
        public string Civility { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string IsEmailValid { get; set; }
        public string IsNumberValid  { get; set; } 
        public DateTime DateOfBirth { get; set; }
        public Address Address { get; set; }
    }


    public class ClientRegistrationCommandValidator : AbstractValidator<ClientRegistrationCommand>
    {
        public ClientRegistrationCommandValidator()
        {
            RuleFor(x => x.Civility)
                .NotEmpty().WithMessage("Civility is required.");

            RuleFor(x => x.FirstName)
                .NotEmpty().WithMessage("First name is required.")
                .MaximumLength(50).WithMessage("First name cannot be longer than 50 characters.");

            RuleFor(x => x.LastName)
                .NotEmpty().WithMessage("Last name is required.")
                .MaximumLength(50).WithMessage("Last name cannot be longer than 50 characters.");

            RuleFor(x => x.PhoneNumber)
                .NotEmpty().WithMessage("Phone number is required.")
                .Matches(@"^\+?\d+$").WithMessage("Phone number is not valid.");

            RuleFor(x => x.Email)
                .NotEmpty().WithMessage("Email is required.")
                .EmailAddress().WithMessage("Email is not valid.");

            RuleFor(x => x.IsEmailValid)
                .Must(x => x == "true" || x == "false")
                .WithMessage("IsEmailValid must be 'true' or 'false'.");

            RuleFor(x => x.IsNumberValid)
                .Must(x => x == "true" || x == "false")
                .WithMessage("IsNumberValid must be 'true' or 'false'.");

            RuleFor(x => x.DateOfBirth)
                .LessThan(DateTime.Now).WithMessage("Date of birth must be in the past.");

            RuleFor(x => x.Address)
                .NotNull().WithMessage("Address is required.")
                .SetValidator(new AddressValidator());
        }
    }

    public class AddressValidator : AbstractValidator<Address>
    {
        public AddressValidator()
        {
            RuleFor(x => x.Country)
                .NotEmpty().WithMessage("Country is required.");

            RuleFor(x => x.Governance)
                .NotEmpty().WithMessage("Governance is required.");

            RuleFor(x => x.City)
                .NotEmpty().WithMessage("City is required.");

            RuleFor(x => x.PostalCode)
                .NotEmpty().WithMessage("Postal code is required.")
                .Matches(@"^\d{5}(-\d{4})?$").WithMessage("Postal code is not valid.");

            RuleFor(x => x.Number)
                .NotEmpty().WithMessage("Number is required.");

            RuleFor(x => x.Street)
                .NotEmpty().WithMessage("Street is required.");
        }
    }

}
