#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
USER app
WORKDIR /app
EXPOSE 8080


FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["Services/AccountCreation/AccountCreation.API/AccountCreation.API.csproj", "Services/AccountCreation/AccountCreation.API/"]
COPY ["BuildingBlocks/CQRS/CQRS.csproj", "BuildingBlocks/CQRS/"]
COPY ["Services/Registration/Registration.Domain/Registration.Domain.csproj", "Services/Registration/Registration.Domain/"]
RUN dotnet restore "./Services/AccountCreation/AccountCreation.API/./AccountCreation.API.csproj"
COPY . .
WORKDIR "/src/Services/AccountCreation/AccountCreation.API"
RUN dotnet build "./AccountCreation.API.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./AccountCreation.API.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "AccountCreation.API.dll"]