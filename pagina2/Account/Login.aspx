<%@ Page Title="Iniciar sesión" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pagina2.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
 <br />

 <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
         <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
</asp:PlaceHolder>
<div class="contenedor">
 <asp:ValidationSummary runat="server" CssClass="text-danger" />
<div class="contmuv">
	 <h4>Iniciar Sesión</h4>

    <br />
     <div class="form-floating mb-3">


          <asp:TextBox runat="server" ID="Email" CssClass="form-control" placeholder="Correo electrónico" TextMode="Email" />
           <label for="Correo electrónico">Correo electrónico</label>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
         CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." />

  

</div>
<div class="form-floating mb-3">

         <asp:TextBox runat="server" ID="Password" placeholder="Contraseña" TextMode="Password" CssClass="form-control" />
         <label for="floatingPassword">Contraseña</label>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="El campo de contraseña es obligatorio." />

</div>
    <div style="display:none" class="checkbox">                  
  <asp:CheckBox runat="server" Text="¿Recordar cuenta?" ID="RememberMe" />
  <asp:Label runat="server" CssClass="text-white d-flex"  AssociatedControlID="RememberMe" ></asp:Label> 
   </div>  
    <br />
    <asp:Button runat="server" OnClick="LogIn" Text="Iniciar sesión" CssClass="btn btn-dark" />
    <br />
    <br />

 <p>
                    <asp:HyperLink runat="server" CssClass="text-white" ID="RegisterHyperLink" ViewStateMode="Disabled">Registrarse como usuario nuevo</asp:HyperLink>
</p>

</div>

</div>

    <style>



h4{
	color:white;
}
.form-control{
	height : 45px !important ;
}
.contenedor {
	background-color: #212529;
	border-style: solid;
	border-color: darkgray;
	border-radius: 20px;
	width: 600px;
	height: 500px;
	position: relative;
	left:25%;
}
.contmuv {
	position: relative;
	top:15%;
	left:27%;
}

.btn-dark{
	border-style: solid;
	border-color: white !important;
}

.btn-dark:hover{
	border-color: white !important;
	color: black !important;
    background-color: white !important;
}

    </style>
</asp:Content>
