using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace GoGadiGo.Data.Model
{
    [Table("tblbblock")]
    public class Block
    {
        [Key]
        public int BlockId { get; set; }
        public string DistrictName { get; set; }
        public string BlockName { get; set; }
        public string DistrictCode { get; set; }
        public int DistrictNumber { get; set; }
    }
}
