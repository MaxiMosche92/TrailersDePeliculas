<%@ Page Title="Administrar cuenta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="pagina2.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">


    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>
    <br />
   <div class="contenedor">
 <div class="icono"> <img src="https://i.imgur.com/BfNgxr3.png" alt="" width="100" height="100" class="d-inline-block align-text-top"></div>
<div class="contmuv">

<asp:HyperLink class="btn btn-dark me-2 " NavigateUrl="/Account/ManagePassword" Text="CambiarContraseña" Visible="false" ID="ChangePassword" runat="server" />
<asp:HyperLink class="btn btn-dark me-2 " NavigateUrl="/Account/ManagePassword" Text="CrearContraseña" Visible="false" ID="CreatePassword" runat="server" />

    <asp:Button CssClass="btn btn-dark me-2 " ID="Agregar" OnClick="Agregar_Click" Text="AgregarPelicula" runat="server" />
    <asp:Button CssClass="btn btn-dark" ID="Filtrar" OnClick="Filtrar_Click" Text="FiltrarPelicula" runat="server" />

</div>
</div>

    <style>
        .contenedor {
	background-color: #212529;
	border-style: solid;
	border-color: darkgray;
	border-radius: 20px;
	width: 1000px;
	height: 200px;
	position: relative;
	top:10%;
	left:10%;
}
.contmuv {
	position: relative;
	top: -15%;
    left: 20%;

 
	}
.icono{
	position: relative;
	top: 20%;
	left: 5%;
    width: 100px;
    height: 100px;
   background-color: #212529;

}
.btn-dark{
	border-style: solid;
	border-color: white !important;
	padding: .625rem 1.25rem !important;
}

.btn-dark:hover{
	border-color: white !important;
	color: black !important;
    background-color: white !important;
}
    </style>

</asp:Content>

