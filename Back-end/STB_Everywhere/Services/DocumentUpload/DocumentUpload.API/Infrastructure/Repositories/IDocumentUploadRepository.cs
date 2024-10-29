using AccountCreation.API.Infrastructure.Repositories;
using AccountCreation.API.Models;
using DocumentUpload.API.Models;

namespace DocumentUpload.API.Infrastructure.Repositories
{
    public interface IDocumentUploadRepository : IAsyncRepository<ClientDocument> 
    {
        Task<ClientDocument> GetByClientIdAsync(Guid clientId);

        Task<List<ClientDocument>> GetClientDocumentsAsync(Guid clientId);
    }
}
