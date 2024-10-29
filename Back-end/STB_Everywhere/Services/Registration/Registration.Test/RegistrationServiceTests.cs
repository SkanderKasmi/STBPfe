using Moq;
using Registration.Application.Contracts.Persistence;
using Registration.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Registration.Test
{
    public class RegistrationServiceTests
    {

        private readonly Mock<IClientRepository> _clientRepository;
        private readonly RegistrationService _registrationService;

        public RegistrationServiceTests()
        {
            _clientRepository = new Mock<IClientRepository>();
            _registrationService = new RegistrationService(_clientRepository.Object);
        }

        [Fact]
        public void RegisterUser_ValidData_ReturnsSuccess()
        {
            // Arrange
            var user = new Client { Email = "test@example.com" };
            _clientRepository.Setup(repo => repo.AddAsync(It.IsAny<Client>())).Returns(Task.FromResult(user));

            // Act
            var result = _registrationService.RegisterUser(user);

            // Assert
            Assert.True(result.IsSuccess);
        }

    }
}
