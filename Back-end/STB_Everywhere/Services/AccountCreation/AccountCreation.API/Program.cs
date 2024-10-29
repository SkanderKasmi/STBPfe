using System.Reflection;
using AccountCreation.API.Infrastructure.Persistance;
using AccountCreation.API.Infrastructure.Repositories;
using AccountCreation.API.Infrastructure.Extensions;
using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Carter;


var builder = WebApplication.CreateBuilder(args);




// Add services to the container.
var assembly = typeof(Program).Assembly;
builder.Services.AddMediatR(config =>
{
    config.RegisterServicesFromAssembly(assembly);
    
});


builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped(typeof(IAccountCreationRepository), typeof(AccountCreationRepository));
builder.Services.AddCarter();

builder.Services.AddDbContext<AccountCreationContext>(options =>
                       options.UseSqlServer(builder.Configuration.GetConnectionString("ConnectionString"), options => options.EnableRetryOnFailure()));
builder.Services.AddScoped(typeof(IAsyncRepository<>), typeof(RepositoryBase<>));
builder.Services.AddScoped<IAccountCreationRepository, AccountCreationRepository>();
builder.Services.AddLogging();

builder.Services.AddControllers();

var app = builder.Build();

app.MigrateDatabase<AccountCreationContext>((context, services) =>
{

});

app.UseSwagger();
app.UseSwaggerUI();

app.MapCarter();
// Configure the HTTP request pipeline.

app.UseHttpsRedirection(); 
app.MapControllers();
app.UseRouting();
app.UseAuthorization();

app.Run();

