using Carter;
using Carter.Response;
using DocumentUpload.API.Infrastructure.Repositories;
using JasperFx.Core.Reflection;
using MediatR;
using Registration.Domain.Entities;
using static DocumentUpload.API.ClientDocuments.GetClientInfo.GetClientDocumentsHandler;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace DocumentUpload.API.ClientDocuments.GetClientInfo
{
    public class GetClientDocumentsEndpoint : CarterModule
    {
        public override void AddRoutes(IEndpointRouteBuilder app)
        {
            app.MapGet("/clients/{clientId}/documents", async (HttpRequest req, HttpResponse res) =>
            {
                if (!req.RouteValues.TryGetValue("clientId", out var clientIdObj) ||
                    !Guid.TryParse(clientIdObj?.ToString(), out var clientId))
                {
                    // Return a bad request response if clientId is not provided or invalid
                    res.StatusCode = StatusCodes.Status400BadRequest;
                    await res.WriteAsync("Invalid or missing clientId parameter.");
                    return;
                }

                var query = new GetClientDocumentsQuery { ClientId = clientId };
                var mediator = req.HttpContext.RequestServices.GetRequiredService<IMediator>();
                var result = await mediator.Send(query);

                res.AsJson(result);
            });

        }
    }
}
