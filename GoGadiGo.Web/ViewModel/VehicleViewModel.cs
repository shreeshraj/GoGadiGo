using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GoGadiGo.Web.ViewModel
{
    public class VehicleViewModel
    {
        public string Ownername { get; set; }
        public string VehicleContactNumber { get; set; }
       
        public bool IsDL { get; set; }
        public string Type { get; set; }
        public string VehicleType { get; set; }
        public string VehicleNumber { get; set; }
        public string VehicleLocation { get; set; }
        public string District { get; set; }
        public string Block { get; set; }
        public string AlternativeContactNumber { get; set; }
        public IFormFile VehicleImage { get; set; }
        public string VehicleImagePath { get; set; }

    }
}
