
using DocumentUpload.API.ClientDocuments.CreateClientDocument;
using Mapster;
using Microsoft.Extensions.Primitives;

namespace DocumentUpload.API
{
    public class MapsterConfig
    {
         public static void Configure()
        {
            TypeAdapterConfig<CreateClientDocumentRequest, CreateClientDocumentCommand>.NewConfig();
            TypeAdapterConfig<CreateClientDocumentResult, CreateClientDocumentResponse>.NewConfig();
        }
    }
}
