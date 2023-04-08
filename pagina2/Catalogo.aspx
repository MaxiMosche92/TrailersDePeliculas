<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="pagina2.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <br />
<div <%=esconder%>  class="contalert" >
  
       <ul class=" ulalerterror" >            
         <li class="row lialerterror">                                         
         <i class="i col-3 fa-solid fa-triangle-exclamation fa-beat-fade"></i><asp:Label CssClass="col-3" ID="ERROR" runat="server" />
         </li>
       </ul>
  </div>






<div id="cont-img">




<ul class="ul">
  <li class="li"><asp:ImageButton ID="IMG1" runat="server" CssClass="img" Visible="false"/> <asp:Label Visible="false" id="j1" runat="server" class="fa-regular fa-circle-play"></asp:Label>
  
 </li>
  <li class="li"><asp:ImageButton ID="IMG2" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j2" runat="server" class="fa-regular fa-circle-play"></asp:Label>

 
 </li>
  <li class="li"><asp:ImageButton ID="IMG3" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j3" runat="server" class="fa-regular fa-circle-play"></asp:Label>

 </li>
  <li class="li"><asp:ImageButton ID="IMG4" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j4" runat="server" class="fa-regular fa-circle-play"></asp:Label>
 
 </li>
  <li class="li"><asp:ImageButton ID="IMG5" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j5" runat="server" class="fa-regular fa-circle-play"></asp:Label>


 </li>
</ul>


 <ul class="ul">
 <li class="li"><asp:ImageButton ID="IMG6" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j6" runat="server" class="fa-regular fa-circle-play"></asp:Label>

 </li>
 <li class="li"><asp:ImageButton ID="IMG7" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j7" runat="server" class="fa-regular fa-circle-play"></asp:Label>

 </li>
  <li class="li"><asp:ImageButton ID="IMG8" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j8" runat="server" class="fa-regular fa-circle-play"></asp:Label>

 </li>
  <li class="li"><asp:ImageButton ID="IMG9" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j9" runat="server" class="fa-regular fa-circle-play"></asp:Label>
 
 </li>
  <li class="li"><asp:ImageButton ID="IMG10" runat="server" CssClass="img" Visible="false"/><asp:Label Visible="false" id="j10" runat="server" class="fa-regular fa-circle-play"></asp:Label>

 </li>
</ul>
</div>
 <div id="DivPag" class="btn-group" >

       <asp:Button ID="Btnizquierda" runat="server" CssClass="btn btn-dark" onclick="Btnizquierda_Click" Text="&laquo;" />
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" />
       <asp:Button ID="Btnderecha" runat="server" CssClass="btn btn-dark" OnClick="Btnderecha_Click" Text="&raquo;"  />

 </div>
  <style>

.ul{
background-color: rgba(82, 82, 82, 0.51);
border-style: solid; 
border-color: white; 
border-width: 1px ;   
border-radius: 25px;
height: 330px;
width: 100%;
max-width: 1255px;
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

#DivPag {

  position: relative;
  top: 20px ;
  left: 500px;
  width: 150px;
  right: 200px;
}

#DivPag .btn {
	width: 50px;
	height: 50px;
}

#MainContent_j1{
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j2 {
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j3 {
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j4{
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j5{
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j6{
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j6{
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j7{
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j8 {
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j9 {
    position: absolute;
    font-size: 50px;
    color: white;
    top: -700%;
    left: 35%;
    cursor: pointer;
}
#MainContent_j10 {
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
.li:hover #MainContent_j2 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j3 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j4 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j5 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j6 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j7 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j8 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j9 {
    opacity: 0;
    visibility: hidden;
}
.li:hover #MainContent_j10 {
    opacity: 0;
    visibility: hidden;
}

.Gner{	 
	 width: 100%;
}

.cont {

   color: white;
   position: relative;
   top: 10%;
   left: 25%;
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
  left: 90%;
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
