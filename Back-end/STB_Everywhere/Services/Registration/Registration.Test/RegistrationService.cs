using Registration.Application.Contracts.Persistence;
using Registration.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Registration.Test
{
    public class RegistrationService
    {

        public readonly IClientRepository _clientRepository;

        public RegistrationService(IClientRepository clientRepository)
        {
            _clientRepository = clientRepository;
        }

        public Result RegisterUser(Client client)
        {
            if (string.IsNullOrEmpty(client.Email))
                return new Result { IsSuccess = false, ErrorMessage = "Email is required." };

            if (!IsValidEmail(client.Email))
                return new Result { IsSuccess = false, ErrorMessage = "Invalid email format." };

            if (_clientRepository.UserExists(client.Email).Result)
                return new Result { IsSuccess = false, ErrorMessage = "User already exists." };

            try
            {
                if (_clientRepository.AddAsync(client)!=null)
                    return new Result { IsSuccess = true };
            }
            catch
            {
                return new Result { IsSuccess = false, ErrorMessage = "An error occurred while registering the user." };
            }

            return new Result { IsSuccess = false, ErrorMessage = "Registration failed." };
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

    }


    

    public class Result
    {
        public bool IsSuccess { get; set; }
        public string ErrorMessage { get; set; }
    }
}
