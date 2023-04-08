<%@ Page Title="Restablecer contraseña" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="pagina2.Account.ResetPassword" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

  <br />

  <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

<div class="contenedor">
 <asp:ValidationSummary runat="server" CssClass="text-danger" />
<div class="contmuv">
	 <h4>Cambiar Contraseña</h4>

    <br />
     <div class="form-floating mb-3">
  <asp:TextBox runat="server" placeholder="Correo electrónico" ID="Email" CssClass="form-control" TextMode="Email" />           
         <asp:Label for="Correo electrónico" runat="server" AssociatedControlID="Email" CssClass="control-label">Correo electrónico</asp:Label>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
         CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." />
</div>
<div class="form-floating mb-3">
  <asp:TextBox placeholder="Contraseña" runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
     <asp:Label runat="server" for="floatingPassword" AssociatedControlID="Password" CssClass="control-label">Contraseña</asp:Label>
	    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
       CssClass ="text-danger" ErrorMessage="El campo de contraseña es obligatorio." />
</div>
<div class="form-floating mb-4">
      
       <asp:TextBox runat="server" placeholder="ConfirmPassword" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
	    <asp:Label for="ConfirmPassword" runat="server" AssociatedControlID="ConfirmPassword" CssClass="control-label">Confirmar contraseña</asp:Label>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="El campo de confirmación de contraseña es obligatorio." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="La contraseña y la contraseña de confirmación no coinciden." />
</div>
	<asp:Button runat="server" OnClick="Reset_Click" Text="Restablecer" CssClass="btn btn-dark" />
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