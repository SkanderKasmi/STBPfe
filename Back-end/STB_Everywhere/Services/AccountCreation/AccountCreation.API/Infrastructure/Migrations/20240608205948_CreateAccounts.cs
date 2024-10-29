using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AccountCreation.API.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class CreateAccounts : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AccountCreation",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ClientId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Nationality = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    OtherNationality = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CivilState = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ProfessionalStatus = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ActivityNature = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FieldOfProfession = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    NetIncome = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    OtherIncome = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    PPE = table.Column<bool>(type: "bit", nullable: false),
                    PoliticalFunction = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    LastModifiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LastModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AccountCreation", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AccountCreation");
        }
    }
}
