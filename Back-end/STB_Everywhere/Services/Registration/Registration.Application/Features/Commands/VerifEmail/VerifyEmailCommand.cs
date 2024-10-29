﻿using FluentValidation;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Registration.Application.Features.Commands.VerifEmail
{
    public class VerifyEmailCommand : IRequest<Unit>
    {
        public Guid ClientId { get; set; }
    }

    public class VerifyEmailCommandValidator : AbstractValidator<VerifyEmailCommand>
    {
        public VerifyEmailCommandValidator()
        {
            RuleFor(x => x.ClientId)
                .NotEmpty().WithMessage("ClientId is required.");
        }
    }
}
