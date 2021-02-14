using GoGadiGo.Data;
using GoGadiGo.Data.Model;
using GoGadiGo.Repo.IRepository;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace GoGadiGo.Repo.Repository
{
    public class VehicleRepo : IVehicleRepo
    {
        private readonly GoGadiGoContext _context;
        private readonly IHostingEnvironment _env;
        public VehicleRepo(GoGadiGoContext context, IHostingEnvironment env)
        {
            _context = context?? throw new NullReferenceException();
            _env = env ?? throw new NullReferenceException();

        }

        public List<VehicleType> GetVehiclesType()
        {
           return _context.vehicleTypes.ToList();
        }


        public void DeleteVehicle(int vehicleId)
        {
            throw new NotImplementedException();
        }

        public Vehicle GetVehicle(int vehicleId)
        {
            if (vehicleId == 0) throw new NullReferenceException();
            return _context.Vehicles.FirstOrDefault(x=>x.VehicleId==vehicleId);
        }

        public List<Vehicle> GetVehiclesList()
        {
            return _context.Vehicles.ToList();
        }

       

        public void UpdateVehicle(Vehicle vehicleRegistration)
        {
            throw new NotImplementedException();
        }

        public List<Vehicle> GetFilteredVehicleList(SearchFields searchFields)
        {
            if (searchFields == null) throw new NullReferenceException();
            return _context.Vehicles.Where(x=>x.District==searchFields.DistrinctName && x.Block==searchFields.BlockName && x.VehicleType==searchFields.VehicleType).ToList();
        }

        public void AddVehicle(Vehicle vehicleRegistration)
        {
            if (vehicleRegistration == null) throw new NullReferenceException();
            _context.Vehicles.Add(vehicleRegistration);
        }
       public bool save()
        {
           if( _context.SaveChanges()>0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public string UploadImage(IFormFile formFile)
        {
            if (formFile == null) throw new NullReferenceException();

            string contentRootPath = _env.ContentRootPath;
            string webRootPath = _env.WebRootPath;
            string fileName = string.Empty;
            var uploads = Path.Combine(webRootPath, "customervehiclepic");
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
