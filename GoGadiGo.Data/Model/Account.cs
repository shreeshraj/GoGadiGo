using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace GoGadiGo.Data.Model
{
    [Table("tbluserregistration")]
   public class Account
    {
        [Key]
        public int UserId { get; set; }
        public string MobileNumber { get; set; }
        public byte[] PasswordHash { get; set; }

        public byte[] PasswordSalt { get; set; }
        public bool IsActive { get; set; }
        public string Type { get; set; }
    }
}
