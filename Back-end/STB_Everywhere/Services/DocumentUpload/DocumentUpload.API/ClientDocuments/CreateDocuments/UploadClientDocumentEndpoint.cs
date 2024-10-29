using Carter;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Routing;

namespace DocumentUpload.API.ClientDocuments.CreateDocuments
{
    public class UploadClientDocumentEndpoint : CarterModule
    {
        public override void AddRoutes(IEndpointRouteBuilder app)
        {
            app.MapPost("/api/clientdocuments/upload", async (HttpRequest req, HttpResponse res) =>
            {
                var form = await req.ReadFormAsync();
                var command = new UploadClientDocumentCommand
                {
                    ClientId = Guid.Parse(form["ClientId"]),
                    CIN = int.Parse(form["CIN"]),
                    DateCIN = DateTime.Parse(form["DateCIN"]),
                    CINImage1 = form.Files["CINImage1"],
                    CINImage2 = form.Files["CINImage2"],
                    Selfie = form.Files["Selfie"]
                };

                var mediator = req.HttpContext.RequestServices.GetRequiredService<IMediator>();
                var result = await mediator.Send(command);

                res.StatusCode = 201;
                await res.WriteAsJsonAsync(new { ClientId = result });
            });
        }
    }
}
