<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.domain.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateSearch() {

	  var s = document.forms["frm"]["pid"].value;
	  var d = document.forms["frm"]["destination"].value;
	  
	  if (s == ""){ // == is comparison... = is assignment
          document.getElementById('error').innerHTML = "Please enter both the values";
          return false;
      }
	  else if(s==d){
		  document.getElementById('error').innerHTML = "Source and Destination cannot be the same";
          return false;
	  }
      else
          return true;
	  }
	  
	  
</script>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Search</title>

<style>
    img {
    max-width: 100%;
    style=height:125px;
    width:200px;
    left: 0px;
    position: relative;
    }
    
    input[type=submit] {
    width: 45%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
               
      </style>

</head>
  <%
    User user =(User) session.getAttribute("name");
	%>    
<title>Welcome <%=user.getFirstname()%></title>  
</head>  
<body>  
<center><img src="letsride.png" align="middle" alt="Lets Ride" ><center>
<br>
<p>

<form class="form-horizontal"  action="${pageContext.request.contextPath}/logout" method="post">
        <div class="row">
            <div class="col-xs-1">
            <p> </p></div>
            <div class="col-xs-2">
               <h3 align="left" for="usr"><b>Welcome <%=user.getFirstname()%>!</b></h3>
                 </div>
             <div class="col-xs-6">
                <p> </p></div>
             <div class="col-xs-1">
            <p> </p></div>
            <div class="col-xs-2">
            <button type="submit" class="btn btn-danger">Logoff</button> 
               <p> </p></div>
                                           
           </div>
    </form>
  <!--   <pre>
    <p style="font-family:trajanpro;font-size:250%;">       Welcome <%=session.getAttribute("name")%> <p>
    </pre>   -->
    <p>
    <br>
    <br>

<h1 class="text-center"> Lets share a Ride! </h1>
<p>
<br>
 <div style="background:#F9EECF;" name="error" id="error"> 
    </div>
 <form method="post" name="frm" action="Search" class="form-horizontal" onsubmit="return validateSearch()">
 
      
       <div class="row">
            <div class="col-xs-1">
            <p> </p></div>
            <div class="col-xs-1">
               <label for="pid">Source</label>
                 </div>
        <div class="col-xs-3">
         <input  type="text" class="form-control" name="pid" id="pid">
        </div>
           <div class="col-xs-1">
            <p> </p></div>
            <div class="col-xs-1">
               <label for="destination">Destination</label>
                 </div>
                 <div class="col-xs-3">
         <input  type="text" class="form-control" name="destination" id="destination">
        
   

         </div>
         
         
         
         
         
         
         
          
               <div class="col-lg-2">
                <button type="submit" class="btn btn-success">Search</button> 
               
            </div>
        </div>
    </form>
</body>
</html>
</body>  
</html>  