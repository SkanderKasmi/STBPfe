using iTextSharp.text.pdf;
using iTextSharp.text;

namespace Signature.API.Signatures.GetClientInfo
{
    public static class PdfGenerator
    {
        public static byte[] GeneratePdf(ClientDetails clientDetails)
        {
            using var stream = new MemoryStream();
            var document = new Document();
            PdfWriter.GetInstance(document, stream);
            document.Open();

            string imagePath = Path.GetFullPath("..\\Signature.API\\Assets\\stb.png");
            Image img = Image.GetInstance(imagePath);
            img.Alignment = Image.ALIGN_CENTER;
            img.ScaleToFit(100f, 100f);
            document.Add(img);

            document.Add(new Paragraph("Account Information")
            {
                Alignment = Element.ALIGN_CENTER,
                Font = FontFactory.GetFont(FontFactory.TIMES_ROMAN, 60, Font.BOLD)
            }); 

            // Add Client Info
            document.Add(new Paragraph($"Civility: {clientDetails.Client.Civility}"));
            document.Add(new Paragraph($"Name: {clientDetails.Client.FirstName} {clientDetails.Client.LastName}"));
            document.Add(new Paragraph($"Phone: {clientDetails.Client.PhoneNumber}"));
            document.Add(new Paragraph($"Email: {clientDetails.Client.Email} (Valid: {clientDetails.Client.IsEmailValid})"));
            document.Add(new Paragraph($"Date of Birth: {clientDetails.Client.DateOfBirth.ToShortDateString()}"));
            document.Add(new Paragraph("Address:"));
            document.Add(new Paragraph($"  {clientDetails.Client.Address.Number} {clientDetails.Client.Address.Street}"));
            document.Add(new Paragraph($"  {clientDetails.Client.Address.City}, {clientDetails.Client.Address.PostalCode}"));
            document.Add(new Paragraph($"  {clientDetails.Client.Address.Governance}, {clientDetails.Client.Address.Country}"));

            // Add Account Creation Info
            document.Add(new Paragraph("Account Creation Details:"));
            document.Add(new Paragraph($"Nationality: {clientDetails.AccountCreation.Nationality}"));
            document.Add(new Paragraph($"Other Nationality: {clientDetails.AccountCreation.OtherNationality}"));
            document.Add(new Paragraph($"Civil State: {clientDetails.AccountCreation.CivilState}"));
            document.Add(new Paragraph($"Professional Status: {clientDetails.AccountCreation.ProfessionalStatus}"));
            document.Add(new Paragraph($"Activity Nature: {clientDetails.AccountCreation.ActivityNature}"));
            document.Add(new Paragraph($"Field of Profession: {clientDetails.AccountCreation.FieldOfProfession}"));
            document.Add(new Paragraph($"Net Income: {clientDetails.AccountCreation.NetIncome}"));
            document.Add(new Paragraph($"Other Income: {clientDetails.AccountCreation.OtherIncome}"));
            document.Add(new Paragraph($"Politically Exposed Person (PPE): {clientDetails.AccountCreation.PPE}"));
            document.Add(new Paragraph($"Political Function: {clientDetails.AccountCreation.PoliticalFunction}"));

           

            document.Close();
            return stream.ToArray();
        }
    }
}
