﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AccountCreation.API.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class AccountClientUpdate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AccountCreation_Client_ClientId",
                table: "AccountCreation");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Client",
                table: "Client");

            migrationBuilder.RenameTable(
                name: "Client",
                newName: "Clients");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Clients",
                table: "Clients",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_AccountCreation_Clients_ClientId",
                table: "AccountCreation",
                column: "ClientId",
                principalTable: "Clients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AccountCreation_Clients_ClientId",
                table: "AccountCreation");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Clients",
                table: "Clients");

            migrationBuilder.RenameTable(
                name: "Clients",
                newName: "Client");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Client",
                table: "Client",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_AccountCreation_Client_ClientId",
                table: "AccountCreation",
                column: "ClientId",
                principalTable: "Client",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
