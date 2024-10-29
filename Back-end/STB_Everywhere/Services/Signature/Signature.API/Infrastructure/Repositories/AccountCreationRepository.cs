using Signature.API.Infrastructure.Persistance;
using Signature.API.Models;
using Microsoft.EntityFrameworkCore;

namespace Signature.API.Infrastructure.Repositories
{
    public class AccountCreationRepository : RepositoryBase<AccountCreationEntity>, IAccountCreationRepository
    {



        public AccountCreationRepository(SignatureContext dbContext) : base(dbContext)
        {
        }


        
        public async Task<AccountCreationEntity> GetByClientIdAsync(Guid clientId)
        {
            return await _dbContext.AccountCreation.FirstOrDefaultAsync(a => a.ClientId == clientId);
        }
    }
}
