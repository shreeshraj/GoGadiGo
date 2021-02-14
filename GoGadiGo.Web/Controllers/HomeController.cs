using GoGadiGo.Repo.IRepository;
using GoGadiGo.Web.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace GoGadiGo.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IBlockRepo _blockRepo;
        public HomeController(ILogger<HomeController> logger, IBlockRepo blockRepo)
        {
            _blockRepo = blockRepo;
             _logger = logger;
            
        }

        public IActionResult Index()
        {
           
            return View();
        }

       

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
