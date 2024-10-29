using Registration.Domain.Entities;

namespace AccountCreation.API.Models
{
    public class AccountCreationEntity : EntityBase
    {
        public Guid ClientId { get; set; }
        public string Nationality { get; set; }
        public string OtherNationality { get; set; }
        public string CivilState { get; set; }
        public string ProfessionalStatus { get; set; }
        public string ActivityNature { get; set; }
        public string FieldOfProfession { get; set; }
        public decimal NetIncome { get; set; }
        public decimal OtherIncome { get; set; }
        public bool PPE { get; set; }
        public string PoliticalFunction { get; set; }
        

    }
}
