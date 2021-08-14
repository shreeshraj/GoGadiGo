using GoGadiGo.Data;
using GoGadiGo.Data.Model;
using GoGadiGo.Repo.IRepository;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace GoGadiGo.Repo.Repository
{
    public class AccountRepo : IAccountRepo
    {
        private readonly GoGadiGoContext _goGadiGoContext;
        private readonly IHostingEnvironment _env;
        public AccountRepo(GoGadiGoContext goGadiGoContext, IHostingEnvironment env)
             
        {
            _goGadiGoContext = goGadiGoContext ?? throw new NullReferenceException();
            _env = env?? throw new NullReferenceException();
        }
        public void UserRegistration(string username, string password)
        {
            if (username == null || password==null)
                throw new NullReferenceException();

            CreatePassword(password, out byte[] passwordHash, out byte[] passwordSalt);
            Account account = new Account();
            account.MobileNumber = username;
            account.PasswordHash = passwordHash;
            account.PasswordSalt = passwordSalt;
           _goGadiGoContext.Accounts.Add(account);

        }

        public bool IsAvailable(string username)
        {
            if (username == null)
                throw new NullReferenceException();
            return _goGadiGoContext.Accounts.Any(x => x.MobileNumber == username);

            
        }
        public Account UserLogin(string mobile,string pass)
        {
            if (mobile == null || pass==null)
                throw new NullReferenceException();
            var data= _goGadiGoContext.Accounts.FirstOrDefault(x=>x.MobileNumber== mobile);
            if (data != null)
            {
                if (IsValidUser(data.MobileNumber, pass, data.PasswordSalt,data.PasswordHash))
                {
                    return new Account() { MobileNumber = data.MobileNumber, UserId = data.UserId, IsActive = true };
                    
                }
                else
                {
                    return new Account() { MobileNumber = data.MobileNumber, UserId = data.UserId, IsActive = false };
                }

            }
            else
            {
                return new Account() { MobileNumber =null, UserId = 0, IsActive = false };
            }

            
           
            
        }

         private void CreatePassword(string password,out byte[]  passwordHash,out byte[] passwordSalt)
         {
            var hmac = new HMACSHA512();
            passwordHash=hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            passwordSalt = hmac.Key;

         }

        private bool IsValidUser(string userName,string password, byte[] salt, byte[] hash)
        {
            var hmac = new HMACSHA512(salt);
            var hasValue=hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));

            for(int i=0;i<hasValue.Length;i=i+1)
            {
                if (hasValue[i] != hash[i])
                    return false;
              

            }
            return true;
        }
        public bool save()
        {
            return _goGadiGoContext.SaveChanges() > 0 ? true : false;
        }

        public void UpdateProfile(Profile profile)
        {

            if (profile.UserId == 0) throw new NullReferenceException();

            var result = _goGadiGoContext.userProfiles.FirstOrDefault(x => x.UserId == profile.UserId);
            if (result==null)
            {
                _goGadiGoContext.userProfiles.Add(profile);
            }
            else
            {
                if(profile.FirstName!="")
                 result.FirstName= profile.FirstName;
                if(profile.LastName!="")
                    result.LastName = profile.LastName;
                if(profile.MobileNumber!="")
                    result.MobileNumber = profile.MobileNumber;
                if(profile.Email!="")
                    result.Email = profile.Email;
                if(profile.ProfileImagePath!="")
                    result.ProfileImagePath = profile.ProfileImagePath;
                if (profile.Address != "")
                    result.Address = profile.Address;








            }
            
        }

        public Profile UserProfile(int userId)
        {
            if (userId == 0) throw new NullReferenceException();
            return _goGadiGoContext.userProfiles.FirstOrDefault(x=>x.UserId==userId);
        }

        public void ChangePassword( string newPassword,string userId)
        {
            if (newPassword == "" || userId == "") throw new Exception();

            var result= _goGadiGoContext.Accounts.FirstOrDefault(x => x.UserId ==int.Parse(userId));

            CreatePassword(newPassword,out byte[] passwordHash,out byte[] passwordSalt);
            result.PasswordHash = passwordHash;
            result.PasswordSalt = passwordSalt;


        }

        public List<Vehicle> GetVehiclesById(int userId)
        {
            if (userId == 0) throw new NullReferenceException();
          return _goGadiGoContext.Vehicles.Where(x=>x.UserId==userId).ToList();
            
        }

        public string UploadImage(IFormFile formFile)
        {
            if (formFile == null) throw new NullReferenceException();

            string contentRootPath = _env.ContentRootPath;
            string webRootPath = _env.WebRootPath;
            string fileName=string.Empty;
            var uploads = Path.Combine(webRootPath, "customerpic");
             if (formFile != null && formFile.Length > 0)
                {
                     fileName = Guid.NewGuid().ToString().Replace("-", "") +
                                    Path.GetExtension(formFile.FileName);
                    using (var s = new FileStream(Path.Combine(uploads, fileName),
                                            FileMode.Create))
                    {
                         formFile.CopyTo(s);
                        
                    }
                }
           
            return fileName;
        }
    }
}
