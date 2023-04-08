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
    public partial class Busqueda : System.Web.UI.Page
    {
        NegociosFunciones functions = new NegociosFunciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            Peliculas Buscar = functions.ObtenerPorNombre(Menuclass.nombreOrg);
            if(Buscar != null) {
            IMG1.ImageUrl = Buscar.linkimg;
            Menuclass.id = Buscar.id;
            IMG1.Click += IMG1_Click;
        }
            else
            {
                Response.Redirect("Catalogo.aspx");
            }

    }

        private void IMG1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}