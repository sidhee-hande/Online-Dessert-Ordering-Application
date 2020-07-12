<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<html>
   <head>
      <title>Your details</title>
      <style>
      h1,h2
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
      <h1>Congratulations!You are now a member!</h1>
      <h2>Thank you for providing us with this information!</h2>
   </font>
   </div>
     <%
     String fname=request.getParameter("firstname");
     String lname=request.getParameter("lastname");
     String number=request.getParameter("number");
     String email=request.getParameter("email");

Connection connection = null; 
PreparedStatement stmt=null;
try {

String connectionURL = "jdbc:mysql://localhost:3306/WTL"; 


Class.forName("com.mysql.jdbc.Driver").newInstance(); 

connection = DriverManager.getConnection(connectionURL, "root", "root");
 
if(!connection.isClosed())

out.println("Successfully connected to " + "our MySQL server........ ");
stmt=connection.prepareStatement("Insert into Members values(?,?,?,?)");
stmt.setString(1,fname);
stmt.setString(2,lname);
stmt.setString(3,number);
stmt.setString(4,email);
stmt.executeUpdate();

out.println("\n Your details have been recorded. ");
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
       if(stmt!=null)
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

   </body>
</html>

