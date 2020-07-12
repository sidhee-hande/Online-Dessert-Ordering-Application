<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<title>Our Menu</title>
<style>
body, html {height: 100%}
body,h1,h2,h3,h4,h5,h6 {font-family: "Amatic SC", sans-serif}
.menu {display: none}
.bgimg {
  background-repeat: no-repeat;
  background-size: cover;
  background-image: url("/w3images/pizza.jpg");
  min-height: 50%;
}
.des
{
background-color:black;
text-color:white;
}
.div
{
  
  background-color:LavenderBlush;
  text-color:be8abf;
     font:Verdana;
    font-size: 23px;
    height: 60%}
</style>
</head>
<body background="./Images/P1.png">
<center>
<s:form action="calculateSumAction" method="post">


<!-- Menu Container -->
<s:div class="des" id="menu">
  <s:div class="w3-content">
 
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px"><font color="purple">THE MENU</font></h1>
    <s:div class="w3-row div">
      <s:a href="javascript:void(0)" onclick="openMenu(event, 'cupcake');" id="myLink">
      <font color="purple">
        <s:div class="w3-col s4 tablink w3-padding-large w3-hover-red"><font color="purple">CUPCAKE</font></s:div>
      </s:a>
      <s:a href="javascript:void(0)" onclick="openMenu(event, 'macroons');">
        <s:div class="w3-col s4 tablink w3-padding-large w3-hover-red">MACAROON</s:div>
      </s:a>
      <s:a href="javascript:void(0)" onclick="openMenu(event, 'pastries');">
        <s:div class="w3-col s4 tablink w3-padding-large w3-hover-red">PASTRIES</s:div>
      </s:a>
        </font>
    
    </s:div>

    <s:div id="cupcake" class="w3-container menu div">
    <font color="purple">
      <h1><b>Chocolate Cupcake</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 80</span></h1>
     <p>Moist,goey rich belgium chocolate cupcake with sprinkles of chocolate chip</p>
      
     
      <hr>
   
      <h1><b>Red Velvet Cupcake</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 80</span></h1>
       <p>Classic red velvet cupcake with rich white cream</p>
      <hr>
     
      <h1><b>Caramel cupcake</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 70</span>
        <p>salted caramel cupcake</p>
          </h1>
      <hr>

      <h1><b>blueberry cupcake</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 70</span></h1>
      <p>fresh blueberry , white cream</p>
      <hr>
</font>

    </s:div>

    <s:div id="macroons" class="w3-container menu div"><font color="purple">
      <h1><b>Chocolate Macaroon</b> <span class="w3-tag w3-grey w3-round">Popular</span> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 40</span></h1>
         <p>chocolate</p>   
      <hr>
   
      <h1><b>Coffee Macaroon</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 40</span></h1>
          
      <hr>
     
      <h1><b>Strawberry Macaroon</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 50</span></h1>
         
      <hr>

      <h1><b>Mint Chocolate Macaroon</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 50</span></h1>
            </font>
    </s:div>


    <s:div id="pastries" class="w3-container menu div">
    <font color="purple">
      <h1><b>Mango Pastry</b> <span class="w3-tag w3-grey w3-round">Seasonal </span><span class="w3-right w3-tag w3-dark-grey w3-round">Rs 70</span></h1>
           
      <hr>
   
      <h1><b>Blackforest Pastry</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 80</span></h1>
          
      <hr>
     
      <h1><b>Chocolate Pastry</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 70</span></h1>
            
      <hr>
     
      <h1><b>Strawberry Pastry</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs 90</span></h1>
       </font>
    </s:div><br>

  
<s:div id ="addCart" class="des" >
<s:div class="des">
 <s:checkbox name="selection"  fieldValue="1" label="Chocolate Cupcake"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
 
  <s:checkbox name="selection"  fieldValue="2" label="Red Velvet cupcake"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
  
  <s:checkbox name="selection"  fieldValue="3" label="Caramel Cupcake"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
  
   <s:checkbox name="selection" fieldValue="4" label="Blueberry Cupcake"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
    <s:checkbox name="selection" fieldValue="5" label="Chocolate Macaroon"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
      <s:checkbox name="selection" fieldValue="6" label="Coffee Macaroon"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
        <s:checkbox name="selection" fieldValue="7" label="Strawberry Macaroon"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
       <s:checkbox name="selection" fieldValue="8" label="Mint Chocolate Macaroon"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
        <s:checkbox name="selection" fieldValue="9" label="Mango Pastry"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
          <s:checkbox name="selection" fieldValue="10" label="Chocolate Pastry"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
           <s:checkbox name="selection" fieldValue="11" label="Blackforest Pastry"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
             <s:checkbox name="selection" fieldValue="12" label="Strawberry Pastry"  class="w3-container w3-black w3-padding-64 w3-xxlarge"/>
              </s:div>
              <s:submit value="ADD TO CART" />
              </s:div>
              </s:div>
              
</s:div>
              </s:form>
               







</center>
  

<script>
// Tabbed Menu
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-red";
}
document.getElementById("myLink").click();
</script>

</body>
</html>