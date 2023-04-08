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
    public partial class Catalogo : System.Web.UI.Page
    {
        public string bulean;
        public static string esconder = "style = 'display: none'";
        public static int pagina = 0;
        public static int id;
        NegociosFunciones function = new NegociosFunciones();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                IMG1.Visible = false;
                IMG2.Visible = false;
                IMG3.Visible = false;
                IMG4.Visible = false;
                IMG5.Visible = false;
                IMG6.Visible = false;
                IMG7.Visible = false;
                IMG8.Visible = false;
                IMG9.Visible = false;
                IMG10.Visible = false;
                j1.Visible = false;
                j2.Visible = false;
                j3.Visible = false;
                j4.Visible = false;
                j5.Visible = false;
                j6.Visible = false;
                j7.Visible = false;
                j8.Visible = false;
                j9.Visible = false;
                j10.Visible = false;
            }
            ERROR.Text = Menuclass.error;
            if (IMG10.ImageUrl == "https://i.imgur.com/kszoLNj.jpg")
            {
                esconder = "";
            }

            Button1.Text = (pagina + 1).ToString();

            if (bulean == "Botoninvisible")
            {
                Btnizquierda.Visible = false;
            }


            listadepeliculas();



            if (IMG1.Visible == false && IMG2.Visible == false && IMG3.Visible == false && IMG4.Visible == false && IMG5.Visible == false &&
                IMG6.Visible == false && IMG7.Visible == false && IMG8.Visible == false && IMG9.Visible == false && IMG1.Visible == false && IMG10.Visible == false)
            {
                pagina--;
                Session["pagina"] = pagina;
                Button1.Text = (pagina + 1).ToString();
                Btnderecha.Visible = false;
                
            }

            if (IMG1.Visible == false)
            {
                IMG1.Visible = true;
                IMG1.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG2.Visible == false)
            {
                IMG2.Visible = true;
                IMG2.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG3.Visible == false)
            {
                IMG3.Visible = true;
                IMG3.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG4.Visible == false)
            {
                IMG4.Visible = true;
                IMG4.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG5.Visible == false)
            {
                IMG5.Visible = true;
                IMG5.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG6.Visible == false)
            {
                IMG6.Visible = true;
                IMG6.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG7.Visible == false)
            {
                IMG7.Visible = true;
                IMG7.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG8.Visible == false)
            {
                IMG8.Visible = true;
                IMG8.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG9.Visible == false)
            {
                IMG9.Visible = true;
                IMG9.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";

            }
            if (IMG10.Visible == false)
            {

                IMG10.Visible = true;
                IMG10.ImageUrl = "https://i.imgur.com/kszoLNj.jpg";


            }


            listadepeliculas();

        }

        public void listadepeliculas()
        {

          List<Peliculas> ListaPelis = function.ObtenerListaPeliculas(pagina);
            foreach(var list in ListaPelis)
            {
                if ( list.id == (pagina + 1 ))
                {
                    IMG1.Visible = true;
                    IMG1.ImageUrl = list.linkimg;
                    j1.Visible = true;
                    IMG1.Click += IMG1_Click;
                }
                if (list.id == (pagina + 2))
                {
                    IMG2.Visible = true;
                    IMG2.ImageUrl = list.linkimg;
                    j2.Visible = true;
                    IMG2.Click += IMG2_Click;
                }
                if (list.id == (pagina + 3))
                {
                    IMG3.Visible = true;
                    IMG3.ImageUrl = list.linkimg;
                    j3.Visible = true;
                    IMG3.Click += IMG3_Click;
                }
                if (list.id == (pagina + 4))
                {
                    IMG4.Visible = true;
                    IMG4.ImageUrl = list.linkimg;
                    j4.Visible = true;
                    IMG4.Click += IMG4_Click;
                }
                if (list.id == (pagina + 5))
                {
                    IMG5.Visible = true;
                    IMG5.ImageUrl = list.linkimg;
                    j5.Visible = true;
                    IMG5.Click += IMG5_Click;
                }
                if (list.id == (pagina + 6))
                {
                    IMG6.Visible = true;
                    IMG6.ImageUrl = list.linkimg;
                    j6.Visible = true;
                    IMG6.Click += IMG6_Click;
                }
                if (list.id == (pagina + 7))
                {
                    IMG7.Visible = true;
                    IMG7.ImageUrl = list.linkimg;
                    j7.Visible = true;
                    IMG7.Click += IMG7_Click;
                }
                if (list.id ==  (pagina + 8))
                {
                    IMG8.Visible = true;
                    IMG8.ImageUrl = list.linkimg;
                    j8.Visible = true;
                    IMG8.Click += IMG8_Click;
                }
                if (list.id  == (pagina + 9))
                {
                    IMG9.Visible = true;
                    IMG9.ImageUrl = list.linkimg;
                    j9.Visible = true;
                    IMG9.Click += IMG9_Click;
                }
                if (list.id == (pagina + 10))
                {
                    IMG10.Visible = true;
                    IMG10.ImageUrl = list.linkimg;
                    j10.Visible = true;
                    IMG10.Click += IMG10_Click;
                }
            }
       
        }

      



        private void IMG1_Click(object sender, ImageClickEventArgs e)
        {

            Menuclass.id = 1 + pagina;
            Response.Redirect("Default.aspx");

        }

        private void IMG10_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 10 + pagina;
            Response.Redirect("Default.aspx");

        }

        private void IMG9_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 9 + pagina;
            Response.Redirect("Default.aspx");
        }

        private void IMG8_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 8 + pagina;
            Response.Redirect("Default.aspx");
        }

        private void IMG7_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 7 + pagina;
            Response.Redirect("Default.aspx");
        }



        private void IMG6_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 6 + pagina;
            Response.Redirect("Default.aspx");
        }

        private void IMG5_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 5 + pagina;
            Response.Redirect("Default.aspx");
        }

        private void IMG4_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 4 + pagina;
            Response.Redirect("Default.aspx");
        }

        private void IMG3_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 3 + pagina;
            Response.Redirect("Default.aspx");
        }

        private void IMG2_Click(object sender, ImageClickEventArgs e)
        {
            Menuclass.id = 2 + pagina;
            Response.Redirect("Default.aspx");
        }



        protected void Btnizquierda_Click(object sender, EventArgs e)
        {
            if (pagina == 0)
            {
                pagina = 1;
                esconder = "style = 'display: none'";
            }
            pagina--;
            Session["pagina"] = pagina;
            esconder = "style = 'display: none'";
            Response.Redirect("Catalogo.aspx");
        }

        protected void Btnderecha_Click(object sender, EventArgs e)
        {
            pagina++;
            Session["pagina"] = pagina;
            esconder = "style = 'display: none'";
            Response.Redirect("Catalogo.aspx");
        }

    }
}