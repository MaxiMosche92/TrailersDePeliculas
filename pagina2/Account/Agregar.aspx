<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="pagina2.Account.Agregar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div <%=esconder%>  class="contalert" >
   
       <ul class=" ulalerterror" >            
         <li class="row lialerterror">
         <i class="i col-3 fa-solid fa-circle-check fa-beat"></i><label class="col-3" for="">Guardado</label>
         </li>
       </ul>
  </div>
    <br />
<div class="Gner" >
	 <div class="border">
	 <div class="cont">
 <label class="form-label">AGREGAR PELICULA</label>
<div class="container-container-sm" >
    
    <asp:Label CssClass="form-label" Text="Nombre Original" runat="server" ID="l1" />
    <asp:TextBox CssClass="form-control" runat="server" ID="textnomorg"></asp:TextBox><br />
    <asp:Label CssClass="form-label" Text="Nombre En Ingles" runat="server" ID="Label1" />
    <asp:TextBox CssClass="form-control" runat="server" ID="textnombreing"></asp:TextBox> <br />
    <asp:Label CssClass="form-label" Text="Nombre En Español" runat="server" ID="Label2" />
    <asp:TextBox CssClass="form-control" runat="server" ID="textnombrees"></asp:TextBox> <br />
    <asp:Label CssClass="form-label" Text="Fecha" runat="server" ID="Label3" />
    <asp:TextBox CssClass="form-control" runat="server" ID="textfecha"></asp:TextBox> <br />
    <asp:Label CssClass="form-label" Text="Link Imagen  (https://imgur.com)" runat="server" ID="Label4" />
    <asp:TextBox CssClass="form-control" runat="server" ID="textlinkimg"></asp:TextBox> <br />
    <asp:Label CssClass="form-label" Text="link Video " runat="server" ID="Label5" />
    <asp:TextBox CssClass="form-control" runat="server" ID="textkinkvid"></asp:TextBox> <br />
    <asp:Label CssClass="form-label" Text="Sinopsis" runat="server" ID="Label6" />
    <asp:TextBox CssClass="tbm form-control" TextMode="multiline" runat="server" ID="textsinopsis"></asp:TextBox> <br />
    <asp:Label CssClass="form-label" Text="Generos" runat="server" ID="Label7" />
    <asp:TextBox CssClass="form-control" runat="server" ID="textgeneros"></asp:TextBox> <br />
    <asp:Button CssClass="btn btn-primary" runat="server" text="Guardar" OnClick="Unnamed_Click" /><br />
    <asp:Label CssClass="form-label" ID="resultado"  runat="server" />

    
    </div>
</div>
</div>
</div>	
 <style>
.Gner{
 
	 width: 100%;
}

.tbm{
resize:none;
width: 280px ;
}

.cont {

   color: white;
   position: relative;
   top: 10%;
   left: 35%;
   height: 700px;
   width: 500px;
}

.border {
	border-radius: 15px;
	position: relative;
   top: 5%;
   left: 15%;
	background-color: black;
	opacity: 0.8;
	height: 1000px;
   width: 1000px;
}

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
  color:green;
  width: 300px;
  height: 50px;
  list-style: none;
}
.lialerterror{

  border-style: solid;
  border-top-color:black;
  border-left-color:black;
  border-right-color:black;
  border-bottom-color: green;
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
  color: green;
  font-size: 20px;
}

    </style>
</asp:Content>
