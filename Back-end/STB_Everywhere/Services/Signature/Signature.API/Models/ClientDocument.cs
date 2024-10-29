

namespace Signature.API.Models
{
    public class ClientDocument : EntityBase
    {

        public Guid ClientId { get; set; }
        public int CIN { get; set; }
        public DateTime DateCIN { get; set; }
        public string CINImage1 { get; set; }
        public byte[] CINImageData1 { get; set; }
        public string CINImage2 { get; set; }
        public byte[] CINImageData2 { get; set; }
        public string Selfie { get; set; }
        public byte[] SelfieData { get; set; }


    }
}
