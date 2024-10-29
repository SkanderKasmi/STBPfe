using Signature.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Signature.API.Infrastructure.Repositories
{
    public interface IClientRepository : IAsyncRepository<Client>
    {
        Task<bool> UserExists(string email);
        
    }
}
