<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.domain.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
 <form method="post" name="frm" action="Search" class="form-horizontal">
 
      
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
    
    <h1 style="text-align:center";"font-size:200%";"font-family:Monotype Corsiva"><i> Share your travel details </i></h1>
  <div class="container-fluid">
   <div class="jumbotron">
      <form name="signup" action="/LetsRide/postiti" method="post" onsubmit="return validation();">  
        <fieldset style="width: 300px">  
            <legend>Please post your travel details</legend>  
            <table align="center">  
            <div class="form-group">
                <tr>  
                    <td>Source</td>  
                    <td><input type="text" name="source" required="required" /></td>  
                </tr>  
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td>Destination</td>  
                    <td><input type="text" name="destination" required="required" /></td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td>Price</td>  
                    <td><input type="text" name="price" required="required" /></td>  
                </tr> 
                </div>
           <tr><td><br></td></tr>
                <div class="form-group">
 
                <tr>  
                    <td>Distance</td>  
                    <td><input type="text" name="distance" required="required" /></td>  
                </tr>
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                
                <tr>  
                    <td>Capacity</td>  
                    <td><input type="text" name="capacity" required="required" /></td>  
                </tr> 
                </div>
                 <div class="form-group">
                <tr>  
                    <td><input type="hidden" value="<%=user.getFirstname()%>" name="sessionId"/></td>  
                </tr>  
                </div>
                <tr><td><br></td></tr>
                
                <p>                
                  
                <tr><td colspan=2 align="center"><button type="submit" class="btn btn-success">Post</button> </td></tr>
               
            
              
            </table>  
        </fieldset>  
    </form>  
    <br>
    <br>
    <a href="#p">@Copyright: A Mustangs Prd.. All Rights Reserved@2016</a>
</body>
</html>
</body>  
</html>  