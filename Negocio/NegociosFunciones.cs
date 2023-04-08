using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegociosFunciones
    {
        PeliculasDatos datos = new PeliculasDatos();

        public Peliculas ObtenerPorId(int id)
        {
            Peliculas buscar = datos.ObtenerPorId(id);
            return buscar;
        }

        public List<Peliculas> ObtenerListaPeliculas(int Pagina)
        {
            return datos.ObtenerlistaPaginada(Pagina);
        }

        public Peliculas ObtenerPorNombre(string nombreorg)
        {
            Peliculas buscar = datos.ObtenerPorNombre(nombreorg);
            return buscar;
        }

        public void AgregarPelicula(string año, string genero, string linkimg, string linkvid, string nombrees,
        string sinopsis, string nombreing, string nombreorg)
        {
         datos.AgregarPeliculaEntiti( año,  genero,  linkimg,  linkvid,  nombrees,
         sinopsis,  nombreing,  nombreorg);
        }

       public void Modificar (Peliculas Modificar , int id)
        {
           datos.Modificar(Modificar, id);
        }

        public void EliminarPelicula(int id)
        {
            datos.Remove(id);
        }
  
    }
}

