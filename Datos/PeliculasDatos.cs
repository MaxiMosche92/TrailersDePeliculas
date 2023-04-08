using Datos.Entity_Framework;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Datos
{
    public class PeliculasDatos
    {
        PaginaPeliculasEntities entities = new PaginaPeliculasEntities();

        public List<Peliculas> ObtenerlistaPaginada(int Pagina )
        {
            var query = entities.prlicula
                        .OrderBy(i => i.id)
                        .Skip(Pagina * 10)
                        .Take(10)
                        .Select(ibd => new Peliculas() {
                            id = ibd.id,
                            nombreorg = ibd.nombreorg,
                            linkimg = ibd.linkimg,
                        }) ;
            return query.ToList();
        }

        public List<Peliculas> ObtenerlistaPeliculas()
        {
            var query = entities.prlicula
                        .OrderBy(i => i.id)                     
                        .Select(ibd => new Peliculas()
                        {
                            id= ibd.id,
                            nombreorg = ibd.nombreorg,
                            nombreing = ibd.nombreing,
                            nombrees = ibd.nombrees,
                            sinopsis = ibd.sinopsis,
                            año = ibd.año,
                            genero = ibd.genero,
                            linkvid = ibd.linkvid,
                            linkimg = ibd.linkimg
                        });
            return query.ToList();
        }

        public Peliculas ObtenerPorId(int i)
        {
            var query = entities.prlicula.Where(n => n.id == i)
                        .Select(ibd => new Peliculas()
                        {
                            nombreorg = ibd.nombreorg,
                            nombreing = ibd.nombreing,
                            nombrees = ibd.nombrees,
                            sinopsis = ibd.sinopsis,
                            año = ibd.año,
                            genero = ibd.genero,
                            linkvid = ibd.linkvid,
                            linkimg = ibd.linkimg
                        }) ;
            return query.FirstOrDefault();
        }

        public Peliculas ObtenerPorNombre(string i)
        {
            var query = entities.prlicula.Where(n => n.nombreorg == i || n.nombreing == i || n.nombrees == i) 
                        .Select(ibd => new Peliculas()
                         {
                             id = ibd.id,
                             nombreorg = ibd.nombreorg,
                             nombreing = ibd.nombreing,
                             nombrees = ibd.nombrees,
                             sinopsis = ibd.sinopsis,
                             año = ibd.año,
                             genero = ibd.genero,
                             linkvid = ibd.linkvid,
                             linkimg = ibd.linkimg
                        });;

            return query.FirstOrDefault();
        }

        private int idmaximo()
        {
            int id = entities.prlicula.Max(r => r.id);
            id++;
            return id;
        }


        private int Buscarlugar()
        {
            List<Peliculas> listpeliculas = ObtenerlistaPeliculas();
            var i = 1;
            foreach (var numero in listpeliculas)
            {
                if (numero.id != i)
                {
                    return i;
                }
                i++;
            }
            return idmaximo();
        }

        private Peliculas AgregarPelicula(string año , string genero , string linkimg , string linkvid , string nombrees,
        string sinopsis , string nombreing , string nombreorg)
        {
            var id = Buscarlugar();
            Peliculas Npelicula = new Peliculas
            {
                id = id,
                año = año,
                genero = genero,
                linkimg = linkimg,
                linkvid = linkvid,
                nombrees = nombrees,
                sinopsis = sinopsis,
                nombreing = nombreing,
                nombreorg = nombreorg 

            };
            return Npelicula;
        }
 

        private prlicula Agregar(Peliculas Cambiador)
        {
            prlicula Cambiar = new prlicula();
            Cambiar.año = Cambiador.año;
            Cambiar.genero = Cambiador.genero;
            Cambiar.id = Cambiador.id;
            Cambiar.linkimg = Cambiador.linkimg;
            Cambiar.linkvid = Cambiador.linkvid;
            Cambiar.nombreorg = Cambiador.nombreorg;
            Cambiar.nombreing = Cambiador.nombreing;
            Cambiar.nombrees = Cambiador.nombrees;
            Cambiar.sinopsis = Cambiador.sinopsis;

            return entities.prlicula.Add(Cambiar);
        }
        

        public void AgregarPeliculaEntiti(string año, string genero, string linkimg, string linkvid, string nombrees,
        string sinopsis, string nombreing, string nombreorg)
        {

            Agregar(AgregarPelicula(año, genero, linkimg, linkvid, nombrees,
         sinopsis, nombreing, nombreorg));

            entities.SaveChanges();

        }

        public void Modificar(Peliculas Cambiador , int id)
        {
            prlicula Cambiar = ObtenerPorIdEntity(id);
            Cambiar.año = Cambiador.año;
            Cambiar.genero = Cambiador.genero;
            Cambiar.linkimg = Cambiador.linkimg;
            Cambiar.linkvid = Cambiador.linkvid;
            Cambiar.nombreorg = Cambiador.nombreorg;
            Cambiar.nombreing = Cambiador.nombreing;
            Cambiar.nombrees = Cambiador.nombrees;
            Cambiar.sinopsis = Cambiador.sinopsis;

            entities.SaveChanges();
        }

        public prlicula ObtenerPorIdEntity(int i)
        {
            var query = entities.prlicula.Where(n => n.id == i);
            return query.FirstOrDefault();
        }

        private void Eliminador(prlicula borrar)
        {
            entities.prlicula.Remove(borrar);
        }


        private prlicula Eliminar (int id)
        {
            prlicula borrar = ObtenerPorIdEntity(id);

            return borrar;
        }

        public void Remove (int id )
        {
            Eliminador(Eliminar(id));
            entities.SaveChanges();
        }

    }
}
