using GoGadiGo.Data.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace GoGadiGo.Repo.IRepository
{
   public interface IBlockRepo
    {
        List<Block> GetBlocksName();
        Block GetBlockName(string blockCode);

        List<Block> GetBlocksNameByCode(string districtCode);
    }
}
