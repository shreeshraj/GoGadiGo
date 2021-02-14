using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace GoGadiGo.Data.Model
{
    [Table("tblerrorLog")]
    class WriteError
    {
        [Key]
        public int Id { get; set; }
        public string ErrorPosition { get; set; }
        public string ErrorMessage { get; set; }
        public DateTime CreationDate { get; set; }
        public bool ErrorStatus { get; set; }
    }
}
