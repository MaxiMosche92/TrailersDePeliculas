<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pagina2._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<br />
	<div class="contgen" >
	<div class="contmuv">
		
          <div class="row titulos"><asp:Label  Text="" runat="server" CssClass=" col-5" ID="NombreORG" /><asp:Label  Text="" runat="server" CssClass=" col-5" ID="NombreFlex" /></div><hr>
          <div class="trailer"><iframe   width="560" height="315" src="<%=link %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div><hr>
          <asp:Label  Text="" runat="server" CssClass="sinopsis" ID="sinopsis" /><hr>
          <div class="row conjunto"><asp:Label  Text="" runat="server" CssClass="col-5" ID="año" /><asp:Label  Text="" runat="server" CssClass="col-5" ID="genero" /></div><hr>

	</div>
</div>


    
    <style>
.contgen{
	background-color: #212529;
	border-style: solid;
	border-color: white;
	border-width: 3px;
	border-radius: 15px;
	color: white;
	position: relative;
	top: 5%;
	left:0%;
	width: 1000px;
	height: 700px;
	text-align: center;
}

.trailer {
	position: relative;
	left: 20% ;
	width: 600px;
	border-style: solid;
	border-color: white;
	border-width: 1px;
	border-radius: 5px;
}



.contmuv{
	position: relative;
	top:3%;
}
    </style>

</asp:Content>
