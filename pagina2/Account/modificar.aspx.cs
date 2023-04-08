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
    public partial class modificar : System.Web.UI.Page
    {
        NegociosFunciones funtions = new NegociosFunciones();
        protected void Page_Load(object sender, EventArgs e)
        {

            Peliculas buscar = funtions.ObtenerPorNombre(Menuclass.nombreOrg);
            if (Menuclass.nombreOrg != "")
            {
                lblnomorg.Text = buscar.nombreorg;
                lbllinkvid.Text = buscar.linkvid;
                lblnombes.Text = buscar.nombrees;
                lblnoming.Text = buscar.nombreing;
                lblgeneros.Text = buscar.genero;
                lblfecha.Text = buscar.año;
                lblsinopsis.Text = buscar.sinopsis;
                lbllinkimg.Text = buscar.linkimg;
                Menuclass.id = buscar.id;
            }
            else
            {
                Filtrar.esconder1 = "style = 'display: none";
                Filtrar.esconder2 = "style = 'display: none";

            }
        }
        protected void Modificar_Click(object sender, EventArgs e)
        {
            
            Peliculas EimPel = funtions.ObtenerPorId(Menuclass.id);
            EimPel.año = textfecha.Text;
            EimPel.genero = textgeneros.Text;
            EimPel.linkimg = textlinkimg.Text;
            EimPel.linkvid = textkinkvid.Text;
            EimPel.nombrees = textnombrees.Text;
            EimPel.sinopsis = textsinopsis.Text;
            EimPel.nombreing = textnombreing.Text;
            EimPel.nombreorg = textnomorg.Text;
            funtions.Modificar(EimPel, Menuclass.id);
        }
    }
}
