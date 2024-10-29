using Carter;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.EntityFrameworkCore;
using Signature.API.Infrastructure.Extensions;
using Signature.API.Infrastructure.Persistance;
using Signature.API.Infrastructure.Repositories;
using Signature.API.Signatures.GetClientInfo;
using System.Reflection;

var builder = WebApplication.CreateBuilder(args);



// Configure the HTTP request pipeline.

var assembly = typeof(Program).Assembly;


// Register MediatR services
builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(Program).Assembly));
builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(GetClientInfoQuery).GetTypeInfo().Assembly));

// Register repositories
builder.Services.AddScoped<IDocumentUploadRepository, DocumentUploadRepository>();
builder.Services.AddScoped<IAccountCreationRepository, AccountCreationRepository>();
builder.Services.AddScoped<IClientRepository, ClientRepository>();


// Register the contexts
builder.Services.AddDbContext<SignatureContext>(options =>
                       options.UseSqlServer(builder.Configuration.GetConnectionString("ConnectionString"), options => options.EnableRetryOnFailure()));




// Additional configuration
builder.Services.Configure<FormOptions>(options =>
{
    options.MultipartBodyLengthLimit = 104857600; // 100 MB
});

// Add other necessary services
builder.Services.AddScoped(typeof(IAsyncRepository<>), typeof(RepositoryBase<>));
builder.Services.AddLogging();
builder.Services.AddControllers();

// Add Swagger
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddCarter();

var app = builder.Build();

// Migrate databases
app.MigrateDatabase<SignatureContext>((context, services) => { });

// Configure the HTTP request pipeline
app.UseSwagger();
app.UseSwaggerUI();

app.UseHttpsRedirection();
app.UseAuthentication();
app.UseRouting();
app.UseAuthorization();

app.MapCarter();

app.UseEndpoints(endpoints =>
{
    endpoints.MapControllers();
});

app.Run();

