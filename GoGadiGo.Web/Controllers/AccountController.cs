using GoGadiGo.Common;
using GoGadiGo.Data.Model;
using GoGadiGo.Repo.IRepository;
using GoGadiGo.Web.Models;
using GoGadiGo.Web.ViewModel;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
namespace GoGadiGo.Web.Controllers
{
    public class AccountController : Controller
    {
        private readonly IAccountRepo _accountRepo;
        public AccountController(IAccountRepo accountRepo)
        {
            _accountRepo = accountRepo ?? throw new NullReferenceException();
         
        }
        [AllowAnonymous]
        public IActionResult Index()
        {
            return View();
        }
        [AllowAnonymous]
        public IActionResult Login()
        {
            return View();
        }
        [AllowAnonymous]
        public IActionResult SignUp()
        {
            return View();
        }
        [HttpGet]
        [Authorize]
        public IActionResult Profile()
        {

            return View();
        }
        [HttpGet]
        [Authorize]
        public IActionResult RecentActivity()
        {
            return View();
        }
        [HttpPost]
        [Authorize]
        public IActionResult RecentPosted()
        {
            List<VehicleViewModel> vehicleViewModel = new List<VehicleViewModel>();
            try
            {
                var results = _accountRepo.GetVehiclesById(int.Parse(User.Identity.Name));

                foreach (var result in results)
                {
                    vehicleViewModel.Add(new VehicleViewModel() { Ownername = result.VehicleOwnerName, VehicleContactNumber = result.VehicleContactNumber, AlternativeContactNumber = result.AlternativeContactNumber, VehicleImagePath=result.VehicleImagePath,VehicleId=result.VehicleId });
                }

            }
            catch(Exception ex)
            {
                CommonClass.LogWritter(ex.Message);
            }
            

            return new JsonResult(vehicleViewModel);

        }
        [HttpPost]
        [Authorize]
        public IActionResult CreateProfile(UserProfileViewModel userProfileViewModel)
        {
          
            
            Status status;
            string path = string.Empty;
            try
            {
                if (userProfileViewModel.Image != null)
                {
                     path = _accountRepo.UploadImage(userProfileViewModel.Image);
                }
               
                
                Profile profile = new Profile() { MobileNumber = userProfileViewModel.MobileNumber, Address = userProfileViewModel.Address, FirstName = userProfileViewModel.FirstName, LastName = userProfileViewModel.LastName, UserId = int.Parse(User.Identity.Name), Email = userProfileViewModel.Email, ProfileImagePath = path };

                _accountRepo.UpdateProfile(profile);



                if (_accountRepo.save())
                {
                    status = new Status() { Message = "Profile Created successfully", StatusCode = true, TargetUrl = "/Account/Profile" };
                    return new JsonResult(status);
                }
                else
                {
                    status = new Status() { Message = "Profile not Created successfully", StatusCode = false, TargetUrl = "/Account/Profile" };
                    return new JsonResult(status);
                }
            }
            catch(Exception ex)
            {
                status = new Status() { Message = "Profile not Created successfully", StatusCode = false, TargetUrl = "/Account/Profile" };

                return new JsonResult(status);
            }
        }
        [HttpPost]
        public IActionResult ShowUserProfile()
        {
            UserProfileViewModel userProfileViewModel = new UserProfileViewModel();
            try
            {
               var result= _accountRepo.UserProfile(int.Parse(User.Identity.Name));
                if (result != null)
                {
                    userProfileViewModel.Address = result.Address;
                    userProfileViewModel.FirstName = result.FirstName;
                    userProfileViewModel.ImagePath = result.ProfileImagePath;
                    userProfileViewModel.MobileNumber = result.MobileNumber;
                    userProfileViewModel.LastName = result.LastName;
                    userProfileViewModel.Email = result.Email;
                }

            }
            catch(Exception ex)
            {
                CommonClass.LogWritter(ex.Message);
            }
           return new JsonResult(userProfileViewModel);

        }
        [HttpPost]
        public IActionResult ChangePassword(string newPassword)
        {
            Status status;
            try
            {
                _accountRepo.ChangePassword(newPassword, User.Identity.Name);
                if (_accountRepo.save())
                {
                    status = new Status() { Message = "Password updated Successfully", StatusCode = true, TargetUrl = "/Account/Profile" };
                }
                else
                {
                    status = new Status() { Message = "Update failed!", StatusCode = false, TargetUrl = "/Account/Profile" };
                }
            }
            catch(Exception ex)
            {
                status = new Status() { Message = "Update failed!", StatusCode = false, TargetUrl = "/Account/Profile" };
                CommonClass.LogWritter(ex.Message);
            }
            return new JsonResult(status);
        }
        [HttpPost]
        public IActionResult Registration(string mobileNumber,string password)
        {
            
            Status status;
            try
            {
                if (mobileNumber!=string.Empty && !_accountRepo.IsAvailable(mobileNumber))
                {
                    _accountRepo.UserRegistration(mobileNumber,password);
                    if (_accountRepo.save())
                    {
                        var result = _accountRepo.UserLogin(mobileNumber, password);
                        status = new Status() { Message = "User created Successfully", StatusCode = true, TargetUrl = "/Account/Profile" };
                        CreateCookies(result.MobileNumber,result.UserId.ToString());
                        return new JsonResult(status);
                    }
                    else
                    {
                        status = new Status() { Message = "Failed", StatusCode =false, TargetUrl = "/Account/SignUp" };
                        return new JsonResult(status);

                        
                    }
                }

                else
                {
                    status = new Status() { Message = "username is taken", StatusCode = false, TargetUrl = "/Account/SignUp" };
                    return new JsonResult(status);
                   
                }
            }
            catch(Exception ex)
            {
                status = new Status() { Message = "Failed", StatusCode = false, TargetUrl = "/Account/SignUp" };
                
                CommonClass.LogWritter(ex.Message);
            }
            
            return new JsonResult(status);
        }
        [HttpPost]
        public IActionResult UserLogin(string mobileNumber,string password)
        {
            Status status;

            try
            {
                var result = _accountRepo.UserLogin(mobileNumber, password);

                if (result.IsActive)
                {
                    status = new Status() { Message = "User created Successfully", StatusCode = true, TargetUrl = "/Account/Profile" };
                    CreateCookies(result.MobileNumber, result.UserId.ToString());
                }
                else
                {
                    status = new Status() { Message = "Failed", StatusCode = false, TargetUrl = "/Account/SignUp" };

                }

            }
            catch(Exception ex)
            {
                status = new Status() { Message = "Failed", StatusCode = false, TargetUrl = "/Account/SignUp" };
                CommonClass.LogWritter(ex.Message);
            }
            

            return new JsonResult(status);

        }
        private async void CreateCookies(string username,string userId)
        {
            var claims = new List<Claim>{
                new Claim(ClaimTypes.Name, userId),
                new Claim("FullName", username),
                new Claim("UserId",userId),
                new Claim(ClaimTypes.Role, "Owner")};
            var claimsIdentity = new ClaimsIdentity(
                claims, CookieAuthenticationDefaults.AuthenticationScheme);

            var authProperties = new AuthenticationProperties
            {
                //AllowRefresh = <bool>,
                // Refreshing the authentication session should be allowed.

                 ExpiresUtc = DateTimeOffset.UtcNow.AddMinutes(20),
                // The time at which the authentication ticket expires. A 
                // value set here overrides the ExpireTimeSpan option of 
                // CookieAuthenticationOptions set with AddCookie.

                IsPersistent = false,
                // Whether the authentication session is persisted across 
                // multiple requests. When used with cookies, controls
                // whether the cookie's lifetime is absolute (matching the
                // lifetime of the authentication ticket) or session-based.

                //IssuedUtc = <DateTimeOffset>,
                // The time at which the authentication ticket was issued.

                //RedirectUri = <string>
                // The full path or absolute URI to be used as an http 
                // redirect response value.
            };

            await HttpContext.SignInAsync(
                CookieAuthenticationDefaults.AuthenticationScheme,
                new ClaimsPrincipal(claimsIdentity),
                authProperties);
        }

        public async Task<IActionResult> Logout()
        {
           
            await HttpContext.SignOutAsync();
            return RedirectToAction("Login","Account");
        }
    }
}
