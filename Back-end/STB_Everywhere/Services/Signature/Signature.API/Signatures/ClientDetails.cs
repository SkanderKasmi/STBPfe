using Signature.API.Models;

namespace Signature.API.Signatures
{
    public class ClientDetails
    {
        public Client Client { get; set; }
        public AccountCreationEntity AccountCreation { get; set; }
        public List<ClientDocument> ClientDocument { get; set; }
    }
}
