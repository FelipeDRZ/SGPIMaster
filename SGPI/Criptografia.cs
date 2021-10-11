using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace SGPI
{
    public class Criptografia
    {
        public String CodigoHash(string TextoClaro)
        {
            using (SHA256 sha256 = new SHA256Managed())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.ASCII.GetBytes(TextoClaro));
                StringBuilder
            }
        } 
    }
}