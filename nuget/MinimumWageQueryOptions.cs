using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MinimumWage
{
    /// <summary>
    /// Query options for the Minimum Wage API
    /// </summary>
    public class MinimumWageQueryOptions
    {
        /// <summary>
        /// Optional 2-letter state code (e.g., CA, NY). Omit for all states.
        /// </summary>
        [JsonProperty("state")]
        public string State { get; set; }
    }
}
