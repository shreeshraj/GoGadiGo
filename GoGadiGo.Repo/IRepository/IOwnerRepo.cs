using GoGadiGo.Data.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace GoGadiGo.Repo.IRepository
{
   public interface IOwnerRepo
    {
        List<Profile> GetUsersProfile();
        Profile GetUserProfile(int userId);

        

        void UpdateOwnerProfile(Profile userProfile);
        void DeleteOwnerProfile(int profileId);
    }
}
