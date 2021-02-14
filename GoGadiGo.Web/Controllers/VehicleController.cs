using GoGadiGo.Data.Model;
using GoGadiGo.Repo.IRepository;
using GoGadiGo.Repo.Repository;
using GoGadiGo.Web.Models;
using GoGadiGo.Web.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GoGadiGo.Web.Controllers
{
    public class VehicleController : Controller
    {

        private readonly IDistrictRepo districtRepo;
        private readonly IBlockRepo blockRepo;
        private readonly IVehicleRepo vehicleRepo;


        public VehicleController(IDistrictRepo _districtRepo, IBlockRepo _blockRepo, IVehicleRepo _vehicleRepo)
        {
            districtRepo = _districtRepo;
            blockRepo = _blockRepo;
            vehicleRepo = _vehicleRepo;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult VehicleList()
        {
            return View();
        }
        [Authorize]
        public IActionResult VehicleDetail()
        {
            return View();
        }
        [Authorize]
        public IActionResult EditVehicle()
        {
            return View();
        }
        [Authorize]
        public IActionResult Registration()
        {
            return View();
        }

        [HttpPost]
        public JsonResult VehicleRegistration(VehicleViewModel vehicleViewModel)
        {
            Status status;

            Vehicle vehicle = new Vehicle();
            vehicle.VehicleOwnerName = vehicleViewModel.Ownername;
            vehicle.UserId =int.Parse(User.Identity.Name);
            vehicle.VehicleContactNumber = vehicleViewModel.VehicleContactNumber;
            vehicle.VehicleNumber = vehicleViewModel.VehicleNumber;
            vehicle.VehicleLocation = vehicleViewModel.VehicleLocation;
            vehicle.District = vehicleViewModel.District;
            vehicle.Block = vehicleViewModel.Block;
            vehicle.AlternativeContactNumber = vehicleViewModel.AlternativeContactNumber;
            vehicle.IsDL = vehicleViewModel.IsDL;
            vehicle.VehicleType = vehicleViewModel.VehicleType;
            if (vehicleViewModel.VehicleImage != null)
            {
                vehicle.VehicleImagePath = vehicleRepo.UploadImage(vehicleViewModel.VehicleImage);
            }
            else
            {
                vehicle.VehicleImagePath = "ff85e320a8a548259c9b677c05ca2074.jpg";

            }
           
            vehicleRepo.AddVehicle(vehicle);
            if (vehicleRepo.save())
            {
                status = new Status() {Message="Done", StatusCode=true,TargetUrl="/Account/Profile" };
                return new JsonResult(status);
            }
            else
            {
                status = new Status() { Message = "Failed", StatusCode = false, TargetUrl = "/Account/Profile" };
                return new JsonResult(status);
            }
           
        }


        [HttpPost]
        public JsonResult  GetDistrictsName()
        {
            return Json(districtRepo.GetDistrinctsName()); 
        }
        [HttpPost]
        public JsonResult GetBlocksNamebyDistrictCode(string districtCode)
        {

            return  Json(blockRepo.GetBlocksNameByCode(districtCode));

        }

        [HttpPost]
        public JsonResult GetVehicleTypes()
        {
            return Json(vehicleRepo.GetVehiclesType());

        }

        [HttpPost]
        public JsonResult GetAllVehicleList()
        {
            return Json(vehicleRepo.GetVehiclesList());

        }

        [HttpGet]
        public JsonResult GetVehicle(int vehicleId)
        {
            return Json(vehicleRepo.GetVehicle(vehicleId));

        }

        [HttpPost]
        public JsonResult GetFilteredVehicleList(SearchFieldViewModel searchFieldViewModel)
        {
            SearchFields searchFields = new SearchFields();
            searchFields.BlockName = searchFieldViewModel.BlockName;
            searchFields.DistrinctName = searchFieldViewModel.DistrinctName;
            searchFields.VehicleType = searchFieldViewModel.VehicleType;
                
            return Json(vehicleRepo.GetFilteredVehicleList(searchFields));

        }

    }
}
