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
        /// 2-letter state code (e.g., CA, NY)
        /// </summary>
        [JsonProperty("state")]
        public string State { get; set; }

        /// <summary>
        /// Year to get minimum wage for (e.g., 2020). Defaults to current year.
        /// </summary>
        [JsonProperty("year")]
        public double? Year { get; set; }
    }
}
