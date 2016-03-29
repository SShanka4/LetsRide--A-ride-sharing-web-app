<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function validate() {

	  var f = document.forms["signup"]["firstname"].value;
	  var l = document.forms["signup"]["lastname"].value;
	  var e = document.forms["signup"]["email"].value;
	  var s = document.forms["signup"]["sex"].value;
	  var u = document.forms["signup"]["userpass"].value;
	  var cp = document.forms["signup"]["confirmpass"].value;
	  var p = document.forms["signup"]["phone"].value;
	  var a = document.forms["signup"]["age"].value;
	  var add = document.forms["signup"]["address"].value;
	  var c = document.forms["signup"]["city"].value;
	  var z = document.forms["signup"]["zip"].value;
	  var r = document.forms["signup"]["role"].value;
	  
	  if (f == "" ||l == "" ||e == "" ||s == "" ||u == "" ||cp == "" ||p == "" ||a == "" ||add == "" ||c == "" ||z == "" ||r == ""){
          document.getElementById('error').innerHTML = "all values are mandatory";
          return false;
      }
	  else if(u!=cp){
		  document.getElementById('error').innerHTML = "Passwords and Cofirm passwords should match";
          return false;
	  }
      else
          return true;
	  }
</script>
<head>
</head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lets Ride</title>
</head>
 
<body>  
<center><img src="letsride.png" align="middle" alt="Lets Ride" ><center>
<h1 style="text-align:center";"font-size:200%";"font-family:Monotype Corsiva"><i>Please create your LetsRide Account</i></h1>
  <div class="container-fluid">
   <div class="jumbotron">
  
      <form name="signup" action="/LetsRide/login" method="post" onsubmit="return validate();">  
        <fieldset style="width: 300px">  
            <legend> Get your free letsride account in seconds </legend>  
            <table align="center"> 
              <div style="background:#F9EECF;" name="error" id="error"> 
    </div> 
            <div class="form-group">
                <tr>  
                    <td>Firstname</td>  
                    <td><input type="text" name="firstname"  /></td>  
                </tr>  
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td>Lastname</td>  
                    <td><input type="text" name="lastname"  /></td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td>Email ID</td>  
                    <td><input type="text" name="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" /></td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td>Sex</td>  
                    <td>               <select name="sex">
  											<option value="male">Male</option>
 											 <option value="female">Female</option>
										</select>
				 </td>  
                </tr>
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
 
                <tr>  
                    <td>Password</td>  
                    <td><input type="password" name="userpass" /></td>  
                </tr>
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                <tr>  
                    <td>Confirm Password</td>  
                    <td><input type="password" name="confirmpass" /></td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                 <tr>  
                    <td>Phone</td>  
                    <td><input type="text" name="phone" maxlength=10/></td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                <tr>  
                    <td>Age</td>  
                    <td><input type="text" name="age" /></td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                <tr>  
                    <td>Address</td>  
                    <td><input type="text" name="address"  /></td>  
                </tr>
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                <tr>  
                    <td>City</td>  
                    <td><input type="text" name="city"  /></td>  
                </tr>  
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                <tr>  
                    <td>Zip</td>  
                    <td><input type="text" name="zip" /></td>  
                </tr>     
                </div>
                <tr><td><br></td></tr>
                     <div class="form-group">
                  <tr>  
                    <td>Role</td>  
                    <td>               <select name="role">
  											<option value="T">Traveler</option>
 											 <option value="D">Driver</option>
										</select>
				 </td>  
                </tr>
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                <tr>  
                    <td colspan=2 align="center"><input type="submit" value="Sign Up" /></td>  
                </tr>  
                </div>
              
            </table>  
        </fieldset>  
    </form>  
    
      <br>
    <br>
    <a href="#p">@Copyright: A Mustangs Prd.. All Rights Reserved@2016</a>
</body>
</html>