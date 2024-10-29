using Signature.API.Infrastructure.Repositories;
using Signature.API.Models;
using Signature.API.Infrastructure.Persistance;
using Microsoft.EntityFrameworkCore;
using Polly;

namespace Signature.API.Infrastructure.Repositories
{
    public class DocumentUploadRepository : RepositoryBase<ClientDocument>, IDocumentUploadRepository
    {
        public DocumentUploadRepository(SignatureContext dbContext) : base(dbContext)
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
