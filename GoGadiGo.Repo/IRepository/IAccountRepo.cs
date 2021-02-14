using GoGadiGo.Data.Model;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GoGadiGo.Repo.IRepository
{
   public interface IAccountRepo
    {
        bool IsAvailable(string username);
        void UserRegistration(string username, string password);
        Account UserLogin(string mobile,string pass);
        void UpdateProfile(Profile profile);
        string UploadImage(IFormFile formFile);
        Profile UserProfile(int userId);
        void ChangePassword(string newPassword,string userId);
        List<Vehicle> GetVehiclesById(int userId);
        bool save();

       

    }
}
