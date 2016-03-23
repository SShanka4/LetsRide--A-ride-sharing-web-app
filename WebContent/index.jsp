<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Login Application</title>  
</head>  
<body>  
    <form action="/LetsRide/login" method="get">  
        <fieldset style="width: 300px">  
            <legend> Login to App </legend>  
            <table>  
                <tr>  
                    <td>User ID</td>  
                    <td><input type="text" name="username" required="required" /></td>  
                </tr>  
                <tr>  
                    <td>Password</td>  
                    <td><input type="password" name="userpass" required="required" /></td>  
                </tr>  
                <tr>  
                    <td><input type="submit" value="Login" /></td>  
                </tr>  
            </table>  
        </fieldset>  
    </form> 
    
      <form action="/LetsRide/login" method="post">  
        <fieldset style="width: 300px">  
            <legend> Sign UP </legend>  
            <table>  
                <tr>  
                    <td>Firstname</td>  
                    <td><input type="text" name="firstname" required="required" /></td>  
                </tr>  
                  <tr>  
                    <td>Lastname</td>  
                    <td><input type="text" name="lastname" required="required" /></td>  
                </tr> 
                  <tr>  
                    <td>Email ID</td>  
                    <td><input type="text" name="email" required="required" /></td>  
                </tr> 
                  <tr>  
                    <td>Sex</td>  
                    <td>               <select name="sex">
  											<option value="male">Male</option>
 											 <option value="female">Female</option>
										</select>
				 </td>  
                </tr>
 
                <tr>  
                    <td>Password</td>  
                    <td><input type="password" name="userpass" required="required" /></td>  
                </tr>
                <tr>  
                    <td>Confirm Password</td>  
                    <td><input type="password" name="confirmpass" required="required" /></td>  
                </tr> 
                 <tr>  
                    <td>Phone</td>  
                    <td><input type="text" name="phone" required="required" /></td>  
                </tr> 
                <tr>  
                    <td>Age</td>  
                    <td><input type="text" name="age" required="required" /></td>  
                </tr> 
                <tr>  
                    <td>Address</td>  
                    <td><input type="text" name="address" required="required" /></td>  
                </tr>
                <tr>  
                    <td>City</td>  
                    <td><input type="text" name="city" required="required" /></td>  
                </tr>  
                <tr>  
                    <td>Zip</td>  
                    <td><input type="text" name="zip" required="required" /></td>  
                </tr>     
                <tr>  
                    <td><input type="submit" value="Login" /></td>  
                </tr>  
            </table>  
        </fieldset>  
    </form>  
  </body>  
</html>  