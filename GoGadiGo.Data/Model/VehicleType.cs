using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace GoGadiGo.Data.Model
{
    [Table("tblvehicletype")]
   public class VehicleType
    {
        [Key]
        public int VId { get; set; }
        public string VehicleTypes { get; set; }
    }
}
