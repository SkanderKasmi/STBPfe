using AccountCreation.API.Models;

namespace AccountCreation.API.Infrastructure.Repositories
{
    public interface IAccountCreationRepository : IAsyncRepository<AccountCreationEntity>
    { 
        Task<AccountCreationEntity> GetByClientIdAsync(Guid clientId);

    }
}
