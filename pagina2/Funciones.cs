using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pagina2
{
    public class Funciones
    {

        public string Guardartitulo(string nombre)
        {
          nombre.Trim().ToLower();
            int n = nombre.Length;
            char[] chars = nombre.ToCharArray();
            for (int x = 0; x < nombre.Length; x++)
            {
                if (chars[x] == ' ' || x == 0)
                {
                    if (x == 0)
                    {
                        chars[x] = char.ToUpper(chars[x]);
                    }
                    else
                    {

                        x++;
                        chars[x] = char.ToUpper(chars[x]);

                    }
                }
                else
                {
                    chars[x] = char.ToLower(chars[x]);
                }
            }
            return new string(chars);
        }

    }
}