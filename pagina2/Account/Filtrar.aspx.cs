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
    public partial class Filtrar : System.Web.UI.Page
    {
        static public string esconder = "style = 'display: none'";
        static public string esconder1 = "";
        static public string esconder2 = "";
        static public int pagina = 0;

        Funciones funciones = new Funciones();
        NegociosFunciones function = new NegociosFunciones();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (esconder1 == "" && esconder2 == "")
            {
                esconder1 = "style = 'display: none'";
                esconder2 = "style = 'display: none'";
            }
    

            List<Peliculas> listpeliculas = function.ObtenerListaPeliculas(pagina);
            foreach (var list in listpeliculas)
            {
                int prueba = list.id;
                if (list.id == (pagina + 1))
                {
                    filtro1.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro1.Visible = true;
                    Mf1.Visible = true;
                    Bf1.Visible = true;
                }
                if (list.id == (pagina + 2))
                {
                    filtro2.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro2.Visible = true;
                    Mf2.Visible = true;
                    Bf2.Visible = true;
                }
                if (list.id == (pagina + 3))
                {
                    filtro3.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro3.Visible = true;
                    Mf3.Visible = true;
                    Bf3.Visible = true;
                }
                if (list.id == (pagina + 4))
                {
                    filtro4.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro4.Visible = true;
                    Mf4.Visible = true;
                    Bf4.Visible = true;
                }
                if (list.id == (pagina + 5))
                {
                    filtro5.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro5.Visible = true;
                    Mf5.Visible = true;
                    Bf5.Visible = true;
                }
                if (list.id == (pagina + 6))
                {
                    filtro6.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro6.Visible = true;
                    Mf6.Visible = true;
                    Bf6.Visible = true;
                }
                if (list.id == (pagina + 7))
                {
                    filtro7.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro7.Visible = true;
                    Mf7.Visible = true;
                    Bf7.Visible = true;
                }
                if (list.id == (pagina + 8))
                {
                    filtro8.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro8.Visible = true;
                    Mf8.Visible = true;
                    Bf8.Visible = true;
                }
                if (list.id == (pagina + 9))
                {
                    filtro9.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro9.Visible = true;
                    Mf9.Visible = true;
                    Bf9.Visible = true;
                }
                if (list.id == (pagina + 10))
                {
                    filtro10.Text = funciones.Guardartitulo(list.nombreorg);
                    filtro10.Visible = true;
                    Mf10.Visible = true;
                    Bf10.Visible = true;
                }
            }

            BtnText.Text = (1 + pagina).ToString();

        }

        protected void Buscar_Click(object sender, EventArgs e)
        {  
            esconder2 = "style = 'display: none'";
            esconder1 = "";
            if (textbusqueda.Text != "")
            {
             Peliculas busqueda = function.ObtenerPorNombre(textbusqueda.Text.ToLower());
                bus.Text = busqueda.nombreorg;
            }
            else
            {
                esconder = "";
                Response.Redirect("/Account/filtrar.aspx");
            }
            
             

        }

        protected void Filtro_Click(object sender, EventArgs e)
        {
            esconder1 = "style = 'display: none'";
            esconder = "style = 'display: none'";
            esconder2 = "";
            Response.Redirect("/Account/filtrar.aspx");
        }

        protected void ModificarBuscar_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = bus.Text;
            Response.Redirect("/Account/modificar.aspx");
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = bus.Text;
            Response.Redirect("/Account/eliminar.aspx");
        }

        protected void Mf1_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro1.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf2_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro2.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf3_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro3.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf4_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro4.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf5_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro5.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf6_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro6.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf7_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro7.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf8_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro8.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf9_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro9.Text;
            Response.Redirect("/Account/modificar.aspx");
        }
        protected void Mf10_click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro10.Text;
            Response.Redirect("/Account/modificar.aspx");
        }

        protected void Bf1_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro1.Text;
            Menuclass.id = 1 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf2_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro2.Text;
            Menuclass.id = 2 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf3_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro3.Text;
            Menuclass.id = 3 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf4_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro4.Text;
            Menuclass.id = 4 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf5_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro5.Text;
            Menuclass.id = 5 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf6_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro6.Text;
            Menuclass.id = 6 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf7_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro7.Text;
            Menuclass.id = 7 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf8_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro8.Text;
            Menuclass.id = 8 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf9_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro9.Text;
            Menuclass.id = 9 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }
        protected void Bf10_Click(object sender, EventArgs e)
        {
            Menuclass.nombreOrg = filtro10.Text;
            Menuclass.id = 10 + pagina;
            Response.Redirect("/Account/Eliminar.aspx");
        }

        protected void Izquierda_Click(object sender, EventArgs e)
        {

            if (pagina <= 0)
            {
                BtnText.Text = "1";
                pagina = 0;
                Session["pagina"] = pagina;
                Response.Redirect("/Account/filtrar.aspx");
                BtnText.Text = (1 + pagina).ToString();
            }
            else
            {
                pagina--;
                Response.Redirect("/Account/filtrar.aspx");

            }
        }

        protected void Derecha_Click(object sender, EventArgs e)
        {

            pagina ++;
            BtnText.Text = pagina.ToString();
            Response.Redirect("/Account/filtrar.aspx");
        }
    }
}