using Microsoft.EntityFrameworkCore;
using WebServices.Models;

namespace WebServices.Contexts
{
    public class PersonContext : DbContext
    {
        public PersonContext(DbContextOptions<PersonContext> options) : base(options)
        {
        }
        public DbSet<Person> person { get; set; }
        public DbSet<Address> address { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Address>().Table("Address");
        }
    }
}