<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filtrar.aspx.cs" Inherits="pagina2.Account.Filtrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="cont">
     <div class="muv row">

<div class="centerimp col-5" ><asp:TextBox CssClass="form-control me-2" runat="server" ID="textbusqueda"></asp:TextBox></div>
       <div class="col-4" ><asp:Button CssClass="a btn btn-sm btn-outline-light" runat="server" text="BUSCAR" OnClick="Buscar_Click" />
        <asp:Button CssClass="a btn btn-sm btn-outline-light" runat="server" text="FILTRAR TODAS" OnClick="Filtro_Click" /></div> 
  </div>
 </div> 
  
    <br />

     <div <%=esconder%>  class="contalert" >
   
       <ul class=" ulalerterror" >            
         <li class="row lialerterror">
         <i class="i col-1 fa-solid fa-triangle-exclamation fa-beat-fade"></i><label class="col-3" for="">ERROR</label>
         </li>
       </ul>
  </div>
    <br />

    <div <%=esconder1 %> >
        <div class="container" >
<ul>

     <li class="row align-items-center" ><div class="col-4  " > <asp:Label CssClass="vs" Text="" runat="server" id="bus" /></div>
    	<div class="col-5 ms-auto" ><asp:Button Text="Modificar" OnClick="ModificarBuscar_Click" CssClass="btn btn-primary btn-sm" runat="server" />
         <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" runat="server" OnClick="Eliminar_Click" /></div></li>

</ul>
</div>

        
    </div>

    <div <%=esconder2 %> >


        <div class="container">
    <ul>
        <li  class="row align-items-center" ><div class="col-4  " > <asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro1" /></div>
    	<div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf1" OnClick="Mf1_click" CssClass="btn btn-primary btn-sm" runat="server" />
         <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf1" OnClick="Bf1_Click" runat="server" /></div></li>

    	<li class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro2" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf2" OnClick="Mf2_click" CssClass="btn btn-primary btn-sm" runat="server" /> 
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf2"  OnClick="Bf2_Click" runat="server" /></div></li>

                <li class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro3" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf3" OnClick="Mf3_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf3"  OnClick="Bf3_Click" runat="server" /></div></li>

                <li class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro4" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf4" OnClick="Mf4_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf4"  OnClick="Bf4_Click" runat="server" /></div></li>

                <li class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" TVisible="false" runat="server" id="filtro5" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" ID="Mf5" Visible="false" OnClick="Mf5_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf5"  OnClick="Bf5_Click" runat="server" /></div></li>

                <li class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro6" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf6" OnClick="Mf6_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf6" OnClick="Bf6_Click" runat="server" /></div></li>

                <li class="row align-items-center" ><div class="col-4 " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro7" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf7" OnClick="Mf7_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf7" OnClick="Bf7_Click" runat="server" /></div></li>

                <li  class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro8" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf8" OnClick="Mf8_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf8" OnClick="Bf8_Click" runat="server" /></div></li>

                <li  class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro9" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" ID="Mf9" Visible="false" OnClick="Mf9_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf9" OnClick="Bf9_Click" runat="server" /></div></li>

                <li   class="row align-items-center" ><div class="col-4  " ><asp:Label CssClass="Lab" Visible="false" runat="server" id="filtro10" /></div>
        <div class="col-5 ms-auto" ><asp:Button Text="Modificar" Visible="false" ID="Mf10"  OnClick="Mf10_click" CssClass="btn btn-primary btn-sm" runat="server" />
            <asp:Button Text="Eliminar" CssClass="btn btn-danger btn-sm" Visible="false" ID="Bf10" OnClick="Bf10_Click" runat="server" /></div></li>
                
                    <li id="botones"  class="row align-items-center" ><div class="col-0  " ></div>
        <div class=" col-5 ms-auto"><asp:Button Text="&laquo;" OnClick="Izquierda_Click" runat="server" CssClass="btn btn-dark" />
                    <asp:Button Text="1" runat="server" ID="BtnText" CssClass="btn btn-dark" />
                    <asp:Button Text="&raquo;" runat="server" OnClick="Derecha_Click" CssClass="btn btn-dark" /></div> </li>   
                    
                  
    </ul>
    </div>
    </div> <br />
    <style>
   .centerimp{
  width: 200px ;
 }

 .cont {
position: relative;
background-color:#212529;
top:3%;
left: 0%;
height: 60px;
width: 100%;
 border-radius: 3px ;
 border-style: solid;
 border-color: gray;
 border-width: 1px;
 border right: 5px;
 }

 .cont .row {
  width: 800px !important ;
  position : relative;
  left: 2%;
 }

 .muv{
  width: 800px;
  padding: 1px;
  position: relative;
  top:16%;
  left: 10%;
 }



 .Lab {
     color:black;
 }
 

 #botones{
  border-style: none !important;
 }

  .btn {
	margin: 3px;
}

/*.a{   
	border-style: solid!important; 
	border-color: white!important; 
	border-width: 1px !important;   
} */

.contalert{
  width: 300px;
  height: 50px;
  position: relative;
  left: 80%;
  top : 5%;
  opacity: 0;
  animation-name: error;
  animation-duration: 7s;
  z-index : 1;
}
.ulalerterror{

  border-radius: 8px; 
  background-color: black;
  color:red;
  width: 300px;
  height: 50px;
  list-style: none;
}
.lialerterror{

  border-style: solid;
  border-top-color:black;
  border-left-color:black;
  border-right-color:black;
  border-bottom-color: red;
  border width: 2px;
  text-align: center;
  position: relative;
  width: 150px;
  height: 30px;
  top: 20%;
  left: 15%;
}

@keyframes error {
  from {opacity: 1;}
  to {opacity: 0;}
}

.i {
  color: red;
  font-size: 20px;
}


    </style>

</asp:Content>
