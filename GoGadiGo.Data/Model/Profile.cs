using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace GoGadiGo.Data.Model
{
    [Table("tbluserprofile")]
   public class Profile
    {
        [Key]
        public int ProfileId { get; set; }
        public string  FirstName { get; set; }
        public string LastName { get; set; }
        public string MobileNumber { get; set; }
        public string Email { get; set; }
        public string ProfileImagePath { get; set; }
        public string Address { get; set; }
        public string District { get; set; }
        public string Block { get; set; }
        public int UserId { get; set; }
    }
}
