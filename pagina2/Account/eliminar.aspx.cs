using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pagina2.Account
{
    public partial class eliminar : System.Web.UI.Page
    {
        public static string link;
        NegociosFunciones function = new NegociosFunciones();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Menuclass.nombreOrg != null)
            {
                Peliculas buscar = function.ObtenerPorNombre(Menuclass.nombreOrg);
                link = buscar.linkimg;
                lblnombre.Text = buscar.nombreorg;
                Menuclass.id = buscar.id;
                Menuclass.nombreOrg = null;
            }
        }

        protected void eliminar_Click(object sender, EventArgs e)
        {    
            function.EliminarPelicula(Menuclass.id);
            Filtrar.esconder1 = "style = 'display: none'";
            Filtrar.esconder2 = "";
            Response.Redirect("/Account/filtrar.aspx");

        }

        protected void cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/filtrar.aspx");

        }

    }
}