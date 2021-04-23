﻿using Magenic.Maqs.BaseDatabaseTest;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Linq;

namespace Tests
{
    /// <summary>
    /// Sample test class
    /// </summary>
    [TestClass]
    public class DatabaseTests : BaseDatabaseTest
    {
        /// <summary>
        /// Sample test
        /// </summary>
        [TestMethod] //- Disabled because this step will fail as the template does not include access to a test database
        public void SampleTest()
        {
            var table = this.DatabaseDriver.Query("SELECT * FROM [dbo].[ResponseTimeResults]");
            Assert.AreEqual(6, table.Count(), "Expected 6 tables");
        }
    }
}
