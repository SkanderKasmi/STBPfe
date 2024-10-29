using AccountCreation.API.Models;
using Microsoft.EntityFrameworkCore;
using Registration.Domain.Entities;

namespace AccountCreation.API.Infrastructure.Persistance
{
    public class AccountCreationContext : DbContext
    {
       
        public AccountCreationContext(DbContextOptions<AccountCreationContext> options) : base(options)
        {
        }


        public DbSet<AccountCreationEntity> AccountCreation { get; set; }
        public DbSet<Client> Clients { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AccountCreationEntity>()
                .HasOne<Client>()
                .WithOne()
                .HasForeignKey<AccountCreationEntity>(o => o.ClientId);

            modelBuilder.Entity<Client>()
            .OwnsOne(c => c.Address);

            ConfigureEntities(modelBuilder);
            base.OnModelCreating(modelBuilder);
        }

        private void ConfigureEntities(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<AccountCreationEntity>().HasKey(c => c.Id);
           

        }
    }
}
