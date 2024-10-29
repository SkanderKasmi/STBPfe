using AccountCreation.API.Infrastructure.Extensions;
using AccountCreation.API.Infrastructure.Persistance;
using AccountCreation.API.Infrastructure.Repositories;
using Carter;
using DocumentUpload.API;
using DocumentUpload.API.ClientDocuments.CreateDocuments;
using DocumentUpload.API.ClientDocuments.GetClientInfo;
using DocumentUpload.API.Infrastructure.Persistence;
using DocumentUpload.API.Infrastructure.Repositories;
using MediatR;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using PdfSharp.Charting;
using Registration.Application.Features.Commands;
using System.Reflection;
using static DocumentUpload.API.ClientDocuments.GetClientInfo.GetClientDocumentsHandler;


var builder = WebApplication.CreateBuilder(args);
MapsterConfig.Configure();
builder.Configuration.AddJsonFile("appsettings.DocumentUpload.json",optional: true, reloadOnChange: false);

var assembly = typeof(Program).Assembly;


// Register MediatR services
builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(Program).Assembly));
builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(UploadClientDocumentCommand).GetTypeInfo().Assembly));
builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(GetClientDocumentsQuery).GetTypeInfo().Assembly));

// Register repositories
builder.Services.AddScoped<IDocumentUploadRepository, DocumentUploadRepository>();
builder.Services.AddScoped<IAccountCreationRepository, AccountCreationRepository>();

// Register the contexts
builder.Services.AddDbContext<AccountCreationContext>(options =>
                       options.UseSqlServer(builder.Configuration.GetConnectionString("ConnectionString"), options => options.EnableRetryOnFailure()));

builder.Services.AddDbContext<DocumentUploadContext>(options =>
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
app.MigrateDatabase<DocumentUploadContext>((context, services) =>
{

});
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
