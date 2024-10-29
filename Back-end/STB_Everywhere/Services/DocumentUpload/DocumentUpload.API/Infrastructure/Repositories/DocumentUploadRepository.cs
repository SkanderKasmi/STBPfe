using AccountCreation.API.Infrastructure.Repositories;
using AccountCreation.API.Models;
using DocumentUpload.API.Infrastructure.Persistence;
using DocumentUpload.API.Models;
using Microsoft.EntityFrameworkCore;
using Polly;

namespace DocumentUpload.API.Infrastructure.Repositories
{
    public class DocumentUploadRepository : RepositoryBase<ClientDocument>, IDocumentUploadRepository
    {
        public DocumentUploadRepository(DocumentUploadContext dbContext) : base(dbContext)
        {
        }
        public async Task<ClientDocument> GetByClientIdAsync(Guid clientId)
        {
            return await _dbContext.ClientDocuments.FirstOrDefaultAsync(a => a.ClientId == clientId);
        }

        public async Task<List<ClientDocument>> GetClientDocumentsAsync(Guid clientId)
        {
            return await _dbContext.ClientDocuments
                .Where(doc => doc.ClientId == clientId)
                .ToListAsync();
        }

    }
}
