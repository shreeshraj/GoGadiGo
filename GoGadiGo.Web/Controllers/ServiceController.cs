﻿using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GoGadiGo.Web.Controllers
{
    public class ServiceController : Controller
    {
        public IActionResult PrivacyPolicy()
        {
            return View();
        }
        public IActionResult ContactUs()
        {
            return View();
        }
    }
}
