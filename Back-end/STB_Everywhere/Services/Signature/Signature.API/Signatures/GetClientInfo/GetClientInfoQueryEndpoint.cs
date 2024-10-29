using Carter;
using MediatR;

namespace Signature.API.Signatures.GetClientInfo
{
    public class GetClientInfoQueryEndpoint : CarterModule
    {
        public override void AddRoutes(IEndpointRouteBuilder app)
        {
            app.MapGet("/clients/{clientId}/info", async (HttpRequest req, HttpResponse res) =>
            {
                 if (!req.RouteValues.TryGetValue("clientId", out var clientIdObj) ||
                    !Guid.TryParse(clientIdObj?.ToString(), out var clientId))
                {
                    // Return a bad request response if clientId is not provided or invalid
                    res.StatusCode = StatusCodes.Status400BadRequest;
                    await res.WriteAsync("Invalid or missing clientId parameter.");
                    return;
                }

                var query = new GetClientInfoQuery { ClientId = clientId };
                var mediator = req.HttpContext.RequestServices.GetRequiredService<IMediator>();
                var result = await mediator.Send(query);


                var pdfBytes = PdfGenerator.GeneratePdf(result);
                res.ContentType = "application/pdf";
                res.Headers.Add("Content-Disposition", $"attachment; filename=Client_{clientId}_Info.pdf");

                await res.Body.WriteAsync(pdfBytes, 0, pdfBytes.Length);
            });
            
            
        }
    }
}
