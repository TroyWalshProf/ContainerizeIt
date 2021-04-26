using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebServices.Models;

namespace WebServices.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PersonController : ControllerBase
    {

        private readonly ILogger<PersonController> _logger;

        public PersonController(ILogger<PersonController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IEnumerable<Person> Get()
        {
            // TODO: EF Core query return here
            return null;
        }

        [HttpPost]
        public IEnumerable<Person> Post()
        {
            // TODO: EF Core query return here
            return null;
        }
    }
}
