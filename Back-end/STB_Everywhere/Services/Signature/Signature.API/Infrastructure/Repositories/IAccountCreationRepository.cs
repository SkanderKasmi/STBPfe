using Signature.API.Models;

namespace Signature.API.Infrastructure.Repositories
{
    public interface IAccountCreationRepository : IAsyncRepository<AccountCreationEntity>
    { 
        Task<AccountCreationEntity> GetByClientIdAsync(Guid clientId);

    }
}
