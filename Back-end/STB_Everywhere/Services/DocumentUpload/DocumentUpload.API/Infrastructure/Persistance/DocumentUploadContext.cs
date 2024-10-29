using DocumentUpload.API.Models;
using Microsoft.EntityFrameworkCore;
using Registration.Domain.Entities;

namespace DocumentUpload.API.Infrastructure.Persistence
{
    public class DocumentUploadContext :DbContext
    {

        public DocumentUploadContext(DbContextOptions<DocumentUploadContext> options) : base(options)
        {
        }


        public DbSet<ClientDocument> ClientDocuments { get; set; }
        public DbSet<Client> Clients { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ClientDocument>().ToTable("ClientDocuments");
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

            modelBuilder.Entity<ClientDocument>().HasKey(c => c.Id);


        }


    }
}
