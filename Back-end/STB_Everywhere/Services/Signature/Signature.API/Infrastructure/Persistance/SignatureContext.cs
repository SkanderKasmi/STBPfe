using Signature.API.Models;
using Microsoft.EntityFrameworkCore;


namespace Signature.API.Infrastructure.Persistance
{
    public class SignatureContext : DbContext
    {

        public SignatureContext(DbContextOptions<SignatureContext> options) : base(options)
        {
        }

        public DbSet<AccountCreationEntity> AccountCreation { get; set; }
        public DbSet<Client> Clients { get; set; }
        public DbSet<ClientDocument> ClientDocuments { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AccountCreationEntity>()
                .HasOne<Client>()
                .WithOne()
                .HasForeignKey<AccountCreationEntity>(o => o.ClientId);

            modelBuilder.Entity<ClientDocument>()
               .HasOne<Client>()
               .WithOne()
               .HasForeignKey<ClientDocument>(o => o.ClientId);

            modelBuilder.Entity<Client>()
            .OwnsOne(c => c.Address);

            ConfigureEntities(modelBuilder);
            base.OnModelCreating(modelBuilder);
        }

        private void ConfigureEntities(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<AccountCreationEntity>().HasKey(c => c.Id);
            modelBuilder.Entity<ClientDocument>().HasKey(c => c.Id);


        }
    }
}
