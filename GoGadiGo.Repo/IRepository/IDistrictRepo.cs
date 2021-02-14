using GoGadiGo.Data.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace GoGadiGo.Repo.IRepository
{
   public interface IDistrictRepo
    {
        List<District> GetDistrinctsName();
        District GetDistrinctName(int distrinctId);
    }
}
