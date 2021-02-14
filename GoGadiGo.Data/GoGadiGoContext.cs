using GoGadiGo.Data.Model;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace GoGadiGo.Data
{
   public class GoGadiGoContext : DbContext
    {
        public GoGadiGoContext(DbContextOptions<GoGadiGoContext> options) : base(options)
        {
        }
        public DbSet<District> districts { get; set; }
        public DbSet<Block> blocks { get; set; }
        
        public DbSet<Profile> userProfiles { get; set; }
        public DbSet<Vehicle> vehicleRegistrations { get; set; }
        public DbSet<VehicleType> vehicleTypes { get; set; }
        public DbSet<Account> Accounts { get; set; }

        public DbSet<Vehicle> Vehicles { get; set; }

    }
   
}
