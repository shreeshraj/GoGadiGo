using GoGadiGo.Data.Model;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace GoGadiGo.Repo.IRepository
{
   public interface IVehicleRepo
    {
        List<Vehicle> GetVehiclesList();
        void AddVehicle(Vehicle vehicleRegistration);
        Vehicle GetVehicle(int vehicleId);
        void UpdateVehicle(Vehicle vehicleRegistration);
        void DeleteVehicle(int vehicleId);
        string UploadImage(IFormFile formFile);
        List<VehicleType> GetVehiclesType();
        List<Vehicle> GetFilteredVehicleList(SearchFields searchFields);
        bool save();

    }
}
