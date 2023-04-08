using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pagina2
{
    public partial class _Default : Page
    {
        public static string link;
        NegociosFunciones entidades = new NegociosFunciones();
        Funciones funciones = new Funciones();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Catalogo.esconder = "style = 'display: none'";
            if ( Menuclass.id != 0) { 
            Peliculas buscar = entidades.ObtenerPorId(Menuclass.id);
            NombreORG.Text = funciones.Guardartitulo(buscar.nombreorg);
            link = buscar.linkvid;
            año.Text = buscar.año;
            genero.Text = buscar.genero;
            sinopsis.Text = buscar.sinopsis;

            if ( buscar.nombreorg == buscar.nombrees)
            {
                NombreFlex.Text = buscar.nombreing;
            }
            if (buscar.nombreing == buscar.nombreing)
            {
                NombreFlex.Text = buscar.nombrees;
            }
            }
            else
            {
                Response.Redirect("Catalogo.aspx");
            }
        }
    }
}