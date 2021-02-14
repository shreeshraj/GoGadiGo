using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GoGadiGo.Web.ViewModel
{
    public class UserProfileViewModel
    {
       
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MobileNumber { get; set; }
        public string Email { get; set; }
        
        public string Address { get; set; }
        public string ImagePath { get; set; }
        public IFormFile Image { get; set; }
    }
}
