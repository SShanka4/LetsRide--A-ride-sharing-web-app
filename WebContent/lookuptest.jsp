<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    left: 570px;
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
<body>

<img src="file:///C:\Users\mannu\Desktop\carpool.jpg" alt="Lets Ride" >
<br>
<p>

<form class="form-horizontal" role="form" action="/registration" method="post">
        <div class="row">
            <div class="col-xs-2">
            <p> </p></div>
            <div class="col-xs-2">
               <h3 for="usr"><b>Welcome <%=session.getAttribute("name")%></b></h3>
                 </div>
             <div class="col-xs-5">
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

   
  
<!--  
 <div class="container">
    <hi1>
     <form class="form-inline" role="form">
    <div class="form-group">
      <label for="Source">Source</label>
      <input type="text" class="form-control" id="source" placeholder="Enter source">
    </div>
    </hi1>
        <div class="form-group">
      <label for="destination">Destination</label>
      <input type="text" class="form-control" id="destination" placeholder="Enter destination">
    </div>
     <button type="submit" class="btn btn-default">Search</button>
  </form>
</div>
 -->
<p>
<br>
<form class="form-horizontal" role="form" action="/registration" method="post">
        <div class="row">
            <div class="col-xs-1">
            <p> </p></div>
            <div class="col-xs-1">
               <label for="usr">Source</label>
                 </div>
             <div class="col-xs-3">
                <input type="text" class="form-control" id="source" name="source">
            </div>
           <div class="col-xs-1">
            <p> </p></div>
            <div class="col-xs-1">
               <label for="usr">Destination</label>
                 </div>
             <div class="col-xs-3">
                <input type="text" class="form-control" id="destination" name="destination">
            </div>  
               <div class="col-lg-2">
                <button type="submit" class="btn btn-success">Search</button> 
               
            </div>
        </div>
    </form>

</body>
</html>