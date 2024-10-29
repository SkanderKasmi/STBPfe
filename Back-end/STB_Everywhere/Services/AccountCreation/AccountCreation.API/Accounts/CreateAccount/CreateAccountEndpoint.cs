using Carter;
using CQRS;
using Mapster;
using MediatR;

namespace AccountCreation.API.Accounts.CreateAccount
{

    public record CreateAccountRequest(

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

        );



    public record CreateAccountResponse(Guid Id);

    public class CreateAccountEndpoint : ICarterModule
    {
        public void AddRoutes(IEndpointRouteBuilder app)
        {
            app.MapPost("/products",
            async (CreateAccountRequest request, ISender sender) =>
            {
                var command = request.Adapt<CreateAccountCommand>();

                var result = await sender.Send(command);

                var response = result.Adapt<CreateAccountResponse>();

                return Results.Created($"/account/{response.Id}", response);

            })
        .WithName("CreateAccount")
        .Produces<CreateAccountResponse>(StatusCodes.Status201Created)
        .ProducesProblem(StatusCodes.Status400BadRequest)
        .WithSummary("Create Account")
        .WithDescription("Create Account");
        }
    }
}
