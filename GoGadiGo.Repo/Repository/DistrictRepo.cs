using GoGadiGo.Data;
using GoGadiGo.Data.Model;
using GoGadiGo.Repo.IRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GoGadiGo.Repo.Repository
{
    public class DistrictRepo : IDistrictRepo
    {
        private readonly GoGadiGoContext context;

        public DistrictRepo(GoGadiGoContext _context)
        {
            context = _context;

        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

       public District GetDistrinctName(int distrinctId)
        {
            throw new NotImplementedException();
        }

       public List<District> GetDistrinctsName()
        {
          return  context.districts.ToList();
        }
    }
}
