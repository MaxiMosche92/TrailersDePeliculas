<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eliminar.aspx.cs" Inherits="pagina2.Account.eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="contgen " >
	<div class=" muv row">
	<div class=" col-6">
		
              
        <img class="img" src="<%=link %>" alt="">


	</div>
	<div class="col-6 ">
			<br><br><br><br><br><br><br><br><br>
        <asp:Label Text="" ID="lblnombre" runat="server" /> <br>

		   <asp:Button CssClass="btn btn-primary" OnClick="cancelar_Click" Text="Cancelar" runat="server" /><asp:Button CssClass="btn btn-danger" Text="Borrar"  OnClick="eliminar_Click" runat="server" />

		</div>
</div>
</div>

    <style>
.contgen{
	position: relative;
	top:10%;
	left:20%;
	width: 900px;
	height: 600px;
	background-color: black;
	color:white;
	  border-style: solid;
    border-color: gray;
    border-width: 3px;
    border-radius: 15px;
}

.img {
	position: relative;
	width: 300px;
	height: 495px;
}

.muv{
	position: relative;
	top:5%;
	left:10%;
    width: 700px;
    height: 500px;
    border-style: solid;
    border-color: gray;
    border-width: 3px;
    border-radius: 15px;
}


    </style>
</asp:Content>
