<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>ORDER SUCCESSFUL!</title>
<style>
h1,h2,h3
      {
      color:White;
      
      }
      body
      {
       background-color:LavenderBlush;
  text-color:be8abf;
     font:Verdana;
    font-size: 23px;
      }
      </style>
   </head>
   
 <body background="./Images/P2 .png" class="div">
 <div class="div">

<h3>YOUR ORDER HAS BEEN RECEIVED!</h3>
<% 
Connection connection=null;
PreparedStatement st=null;
String name = request.getParameter("Name");
String address=request.getParameter("Address");
String phoneno=request.getParameter("Number");
int idvalue=(int)session.getAttribute("hiddenvalue");

try {

String connectionURL = "jdbc:mysql://localhost:3306/WTL"; 


Class.forName("com.mysql.jdbc.Driver").newInstance(); 
 
connection = DriverManager.getConnection(connectionURL, "root", "root");

if(!connection.isClosed())
%>
<font size="+3" color="green"></b>
<% 
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
<form>
<div class="div">
<input type="button", value="Go Back to Home" onclick="window.location.href='MainPage.html';">
</div>
</form>
</body>
</html>