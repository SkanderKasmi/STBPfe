using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DocumentUpload.API.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            

            migrationBuilder.CreateTable(
                name: "ClientDocuments",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ClientId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CIN = table.Column<int>(type: "int", nullable: false),
                    DateCIN = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CINImage1 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CINImageData1 = table.Column<byte[]>(type: "varbinary(max)", nullable: false),
                    CINImage2 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CINImageData2 = table.Column<byte[]>(type: "varbinary(max)", nullable: false),
                    Selfie = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    SelfieData = table.Column<byte[]>(type: "varbinary(max)", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    LastModifiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LastModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ClientDocuments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ClientDocuments_Clients_ClientId",
                        column: x => x.ClientId,
                        principalTable: "Clients",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ClientDocuments_ClientId",
                table: "ClientDocuments",
                column: "ClientId",
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ClientDocuments");

            migrationBuilder.DropTable(
                name: "Clients");
        }
    }
}
