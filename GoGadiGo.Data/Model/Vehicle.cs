using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace GoGadiGo.Data.Model
{
    [Table("tblvehicle")]
   public class Vehicle
    {
        [Key]
        public int VehicleId { get; set; }
        public int UserId { get; set; }
        public string VehicleOwnerName { get; set; }
        

        public bool IsDL { get; set; }
        
        public string VehicleType { get; set; }
        public string VehicleNumber { get; set; }
        public string VehicleLocation { get; set; }
        public string District { get; set; }
        public string Block { get; set; }
        public string VehicleContactNumber { get; set; }
        public string AlternativeContactNumber { get; set; }
        public string VehicleImagePath { get; set; }
        public bool IsActive { get; set; }
    }
}
