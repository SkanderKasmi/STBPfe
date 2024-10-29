using AccountCreation.API.Infrastructure.Persistance;
using AccountCreation.API.Models;
using Microsoft.EntityFrameworkCore;

namespace AccountCreation.API.Infrastructure.Repositories
{
    public class AccountCreationRepository : RepositoryBase<AccountCreationEntity>, IAccountCreationRepository
    {



        public AccountCreationRepository(AccountCreationContext dbContext) : base(dbContext)
        {
        }

        public async Task<AccountCreationEntity> GetByClientIdAsync(Guid clientId)
        {
            return await _dbContext.AccountCreation.FirstOrDefaultAsync(a => a.ClientId == clientId);
        }
    }
}
