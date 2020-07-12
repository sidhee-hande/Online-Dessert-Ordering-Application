<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Cart</title>
<style>
.mybutton1
{
background-color:white;
    cursor:pointer;
    border: 2px solid black;
    width:25%;
    height:100px;
     color:black;
     font:Verdana;
    font-size: 23px;
  text-decoration:none;
   display: inline-flex; /* keep the inline nature of buttons */
    align-items: flex-start; /* this is default */
   text-align: center;
  display: inline-block;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  
}
.button1:hover
{

 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>

<body>
<h1>YOUR CART</h1>
<% 
Connection connection=null;
PreparedStatement st=null;
String[] selection = request.getParameterValues("selection");
int[] prices=new int[30];
String[] dessert=new String[30];
int id=0;

int totalcost=0;
try {

String connectionURL = "jdbc:mysql://localhost:3306/WTL"; 


Class.forName("com.mysql.jdbc.Driver").newInstance(); 
 
connection = DriverManager.getConnection(connectionURL, "root", "root");

if(!connection.isClosed())
%>
<font size="+3" color="green"></b>
<% 

for(int i=0;i<selection.length;i++)
{
 st = connection.prepareStatement("select* from Menu where dessert_id= ?");
 st.setString(1,selection[i]);
 ResultSet rs=st.executeQuery();
 
 while(rs.next())
 {
	 prices[i]=rs.getInt("price");
	 dessert[i]=rs.getString("dessertname");
 }
 rs.close();
 
 totalcost=totalcost+prices[i];
}


StringBuilder desserts=new StringBuilder("");
for(int i=0;i<selection.length;i++)
{
 desserts.append(dessert[i]);
 desserts.append(",");
}
String dessertstring=desserts.toString();
st=connection.prepareStatement("insert into Orders(items,price) values (?,?)");
st.setString(1, dessertstring);
st.setInt(2,totalcost);
st.executeUpdate();

st = connection.prepareStatement("select * from Orders where items= ?");
st.setString(1,dessertstring);
ResultSet rs=st.executeQuery();

while(rs.next())
{
	id=rs.getInt("order_id");
}
rs.close();
}

catch(SQLException se){
    //Handle errors for JDBC
    se.printStackTrace();
 }catch(Exception e){
    //Handle errors for Class.forName
    e.printStackTrace();
 }finally{
    //finally block used to close resources
    try{
       if(st!=null)
          connection.close();
    }catch(SQLException se){
    }// do nothing
    try{
       if(connection!=null)
          connection.close();
    }catch(SQLException se){
       se.printStackTrace();
    }//end finally try
 }

%>

<br>
<br>

<table border="1" style="width:300ps" color="red">
<tr>
<th>Index No.</th>
<th>Dessert Name</th>
<th>Price</th>
</tr>

<%
for(int i=0;i<selection.length;i++)
{ %>
<tr>
<td>
	<% out.println("			"+(i+1));
	%>
</td>
<td>
	<% out.println("			"+ dessert[i]);
	%>
</td>
<td>
	<% out.println("			"+prices[i]);
	%>
</td>
</tr>
<%
}
%>


	
</table>
<% 
out.println("Total Amount: Rs. "+ totalcost);
//session.setAttribute("desserts",dessert);
//session.setAttribute("prices",prices);
//session.setAttribute("total",totalcost);
session.setAttribute("hiddenvalue",id);
%>

<form name="loginform" method="POST">

<input type="button" value="PLACE ORDER"  class ="mybutton1 button1" onclick="window.location.href='Checkout.html';">
</form>
</font>
</body> 
</html>