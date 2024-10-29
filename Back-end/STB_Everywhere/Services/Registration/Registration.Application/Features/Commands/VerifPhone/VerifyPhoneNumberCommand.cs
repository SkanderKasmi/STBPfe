using FluentValidation;
using MediatR;
using Registration.Application.Features.Commands.VerifEmail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Registration.Application.Features.Commands.VerifPhone
{
    public class VerifyPhoneNumberCommand : IRequest<Unit>
    {
        public Guid ClientId { get; set; }
    }

    public class VerifyPhoneNumberCommandValidator : AbstractValidator<VerifyPhoneNumberCommand>
    {
        public VerifyPhoneNumberCommandValidator()
        {
            RuleFor(x => x.ClientId)
                .NotEmpty().WithMessage("ClientId is required.");
        }
    }
}
