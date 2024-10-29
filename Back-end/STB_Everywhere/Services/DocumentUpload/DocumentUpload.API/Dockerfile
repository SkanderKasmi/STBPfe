#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
USER app
WORKDIR /app
EXPOSE 8080


FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["Services/DocumentUpload/DocumentUpload.API/DocumentUpload.API.csproj", "Services/DocumentUpload/DocumentUpload.API/"]
COPY ["BuildingBlocks/CQRS/CQRS.csproj", "BuildingBlocks/CQRS/"]
COPY ["Services/AccountCreation/AccountCreation.API/AccountCreation.API.csproj", "Services/AccountCreation/AccountCreation.API/"]
COPY ["Services/Registration/Registration.Domain/Registration.Domain.csproj", "Services/Registration/Registration.Domain/"]
COPY ["Services/Registration/Registration.Infrastructure/Registration.Infrastructure.csproj", "Services/Registration/Registration.Infrastructure/"]
COPY ["Services/Registration/Registration.Application/Registration.Application.csproj", "Services/Registration/Registration.Application/"]
RUN dotnet restore "./Services/DocumentUpload/DocumentUpload.API/./DocumentUpload.API.csproj"
COPY . .
WORKDIR "/src/Services/DocumentUpload/DocumentUpload.API"
RUN dotnet build "./DocumentUpload.API.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./DocumentUpload.API.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DocumentUpload.API.dll"]