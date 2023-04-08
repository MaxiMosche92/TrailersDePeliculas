<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="modificar.aspx.cs" Inherits="pagina2.Account.modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row">

<div class="Gner" >
	 <div class="border">
<div class="row">
    <div class="col-5">
             <div class="cont">
 
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
    <asp:Button CssClass="btn btn-primary" runat="server" text="MODIFICAR" OnClick="Modificar_Click" /><br />
    <asp:Label CssClass="form-label" ID="resultado"  runat="server" />
</div>
</div>
    </div>
     <div class="col-6">
        <div class="borinfo">
     <asp:Label CssClass="form-label" Text="Nombre Original :" runat="server" />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lblnomorg" /> <br>
     <asp:Label CssClass="form-label" Text="Nombre En Ingles :" runat="server" />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lblnoming" /> <br>
     <asp:Label CssClass="form-label" Text="Nombre En Español :" runat="server"  />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lblnombes" /> <br>
     <asp:Label CssClass="form-label" Text="Fecha :" runat="server"  />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lblfecha" /> <br>
     <asp:Label CssClass="form-label" Text="Link Imagen :" runat="server" />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lbllinkimg" /> <br>
     <asp:Label CssClass="form-label" Text="link Video :" runat="server"  />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lbllinkvid" /> <br>
     <asp:Label CssClass="form-label" Text="Sinopsis :" runat="server"  />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lblsinopsis" /> <br>
     <asp:Label CssClass="form-label" Text="Generos :" runat="server"  />
     <asp:Label CssClass="form-label" Text="" runat="server" ID="lblgeneros" /> <br>
     </div>
</div>
</div>
</div>
</div>
      
    <style>
.tbm{
resize:none;
width: 280px ;
}
.Gner{	 
	 width: 100%;
}

.cont {

   color: white;
   position: relative;
   top: 10%;
   left: 10%;
   height: 700px;
   width: 500px;
}

.border {
	border-radius: 15px;
    border-style: solid;
    border-color: gray;
     border-width :2px;
	position: relative;
     top: 0%;
     left: 5%;
	background-color: #212529;
     width: 900px;
	height: 800px;

}
.borinfo{
 position: relative;
 top :25%;
 left :-2%;
 color:white;
 border-style: solid;
 border-color: gray;
  border-width :1px;
 border-radius: 15px;
 text-align: center; 
}
    </style>

</asp:Content>
