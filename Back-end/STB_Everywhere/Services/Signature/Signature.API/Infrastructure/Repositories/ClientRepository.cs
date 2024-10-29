using Microsoft.EntityFrameworkCore;
using Signature.API.Models;
using Signature.API.Infrastructure.Persistance;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Signature.API.Infrastructure.Repositories
{
    public class ClientRepository : RepositoryBase<Client>, IClientRepository
    {
        public ClientRepository(SignatureContext dbContext) : base(dbContext)
        {
        }

        public async Task<Client> GetByClientIdAsync(Guid Id)
        {
            return await _dbContext.Clients.FirstOrDefaultAsync(a => a.Id == Id);
        }
        public async Task<bool> UserExists(string email)
        {
            return await _dbContext.Clients.AnyAsync(c => c.Email == email);
        }
    }
}
