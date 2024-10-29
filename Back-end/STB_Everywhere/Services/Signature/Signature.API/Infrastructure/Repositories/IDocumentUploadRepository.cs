using Signature.API.Infrastructure.Repositories;
using Signature.API.Models;


namespace Signature.API.Infrastructure.Repositories
{
    public interface IDocumentUploadRepository : IAsyncRepository<ClientDocument> 
    {
        Task<ClientDocument> GetByClientIdAsync(Guid clientId);

        Task<List<ClientDocument>> GetClientDocumentsAsync(Guid clientId);
    }
}
