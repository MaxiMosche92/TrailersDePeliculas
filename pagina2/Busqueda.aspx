<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="pagina2.Busqueda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />
    <div id="cont-img">
<ul class="ul">
  <li class="li"><asp:ImageButton ID="IMG1" runat="server" CssClass="img" /> <asp:Label  id="j1" runat="server" class="fa-regular fa-circle-play"></asp:Label>
 </ul>
 </div>

    <style>
.ul{
list-style-type: none;
position: relative;
top:  0px;
left: 0px;
}

 .li {
  position: relative;
    display: inline;
  padding-right: 0.5em;
  padding-top: 1px;
  top: 5%;
  left: 5%;
  justify-content: center;
  align-items:  center;
   width: 100%;
  width: 100px;
  overflow: hidden;
  border-radius: 6px;

} 

.img{
 height: 300px;
 width: 200px;
 border-radius: 6px; 
 cursor: pointer;
box-shadow: 10px 10px 15px black;
opacity: 1;
}

.img:hover {
  transform: scale(1.05);

}

#MainContent_j1{
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
.li:hover #MainContent_j1 {
    opacity: 0;
    visibility: hidden;
}
        </style>
</asp:Content>
