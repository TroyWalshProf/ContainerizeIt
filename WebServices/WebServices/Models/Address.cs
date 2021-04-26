using System.ComponentModel.DataAnnotations.Schema;

namespace WebServices.Models
{
    [Table("Addresses")]
    public class Address
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int AddressID { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
    }
}
