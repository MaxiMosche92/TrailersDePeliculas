using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pagina2.Account
{
    public partial class Agregar : System.Web.UI.Page
    {
        static public string esconder = "style = 'display: none'";


        NegociosFunciones function = new NegociosFunciones();


        protected void Page_Load(object sender, EventArgs e)
        {

   
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {



            if (textnombrees.Text != "" && textnomorg.Text != "" && textnombreing.Text != ""
                && textfecha.Text != "" && textgeneros.Text != "" && textlinkimg.Text != ""
                && textkinkvid.Text != "" && textsinopsis.Text != "")
            {

                function.AgregarPelicula(textfecha.Text,
                   textgeneros.Text,
                   textlinkimg.Text,
                   textkinkvid.Text,
                  textnombrees.Text.ToLower(),
                  textsinopsis.Text,
                  textnombreing.Text.ToLower(),
                  textnomorg.Text.ToLower());
            }
            else
            {
                /* cartel de error vacio */
            }

            textnombrees.Text = "";
            textnomorg.Text = "";
            textnombreing.Text = "";
            textfecha.Text = "";
            textgeneros.Text = "";
            textlinkimg.Text = "";
            textkinkvid.Text = "";
            textsinopsis.Text = "";

            esconder = "";
            Response.Redirect("/Account/Agregar.aspx");
        }

    }

}