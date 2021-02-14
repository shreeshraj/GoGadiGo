using System;
using System.Security.Cryptography;

namespace GoGadiGo.Common
{
    public static class CommonClass
    {
        public static void CreatePassword(string Password,out byte[] PasswordHash,out byte[] PasswordSalt)
        {
            if (Password == string.Empty)
            throw new NullReferenceException();
            var hmac = new HMACSHA512();
            PasswordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(Password));
            PasswordSalt = hmac.Key;

        }

        public static void CreateHasFromGiven(byte[] key,string password,out byte[] passwordHash)
        {
            var hmac = new HMACSHA512(key);
            byte[] hash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            passwordHash = hash;
        }

        public static string CreateToken()
        {
            return null;
        }

        public static string ConvertFormat()
        {
            return null;
        }

        public static void LogWritter(string logText)
        {

        }

    }
}
