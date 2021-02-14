using GoGadiGo.Data;
using GoGadiGo.Data.Model;
using GoGadiGo.Repo.IRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GoGadiGo.Repo.Repository
{
   public class BlockRepo:IBlockRepo
    {
        private readonly GoGadiGoContext context;
        public BlockRepo(GoGadiGoContext _context)
        {
            context = _context?? throw new NullReferenceException();
        }
      public  List<Block> GetBlocksName()
        {
             return  context.blocks.ToList();
           
                
        }

       public List<Block> GetBlocksNameByCode(string districtCode)
        {
            if (districtCode == null) throw new NullReferenceException();
            return context.blocks.Where(x=>x.DistrictCode==districtCode).ToList();
        }


        public Block GetBlockName(string blockCode)
        {
            if (blockCode == null) throw new NullReferenceException();
            throw new NotImplementedException();
        }
    }
}
