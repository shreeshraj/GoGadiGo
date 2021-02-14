using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GoGadiGo.Web.ViewModel
{
    public class RegistrationViewModel
    {
        public int UserId { get; set; }
        public string MobileNumber { get; set; }
        public string Password { get; set; }
        public bool IsActive { get; set; }
        public DateTime LastLogin { get; set; }
        public DateTime CreatedDate { get; set; }
        public string Type { get; set; }
    }
}
