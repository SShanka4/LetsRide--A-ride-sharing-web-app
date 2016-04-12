<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.domain.User" %>
<!DOCTYPE HTML>
<html>
	<head>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
		    <script type="text/javascript" src="js/camera.min.js"></script>
				<script type="text/javascript">
			   jQuery(function(){
				jQuery('#camera_wrap_1').camera({
					height: '500px',
					pagination: false,
				});
			});
   <script>
   function getMoreFields() {
	  //alert('Clicked');
	  var d = document.getElementById("moreFields");
	  var newName1 = document.createElement("TH");
	  d.innerHTML="sdjbsdk";
  	</script>
	
	<script language="javascript">
var addid = 0;
var count = 0;
function addInput(id){
    var docstyle = document.getElementById('addlist').style.display;
    if(docstyle == 'none')
        document.getElementById('addlist').style.display = '';

    addid++;
    //count=addid;
    
    
    	
    //var text = "<br><br /><div id='additem_"+addid+"'><input type='text' size='100' value='' class='buckinput' name='items[]' style='padding:5px;' /> <a href='javascript:void(0);' onclick='addInput("+addid+")' id='addlink_"+addid+"'>add more</a></div><br>";
	//var text = "<br><br /><div id='additem_"+addid+"'><input type='text' size='10' value='' class='buckinput' name='additem_"+addid+"' style='padding:5px;' ><input type='text' size='10' value='' class='buckinput' name='srcDist_"+addid+"' style='padding:5px;' />";
	var text = "<br><br /><div id='additem_"+addid+"'><input type='text' size='10' value='' class='buckinput' name='additem_"+addid+"' style='padding:5px;' ><input type='text' size='10' value='' class='buckinput' name='srcDist_"+addid+"' style='padding:5px;' />";
	
	if(addid<3){
    document.getElementById('addlist').innerHTML += text;}
}
</script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   
 
<title>Post</title>

<style>
    img {
    max-width: 100%;
    style=height:125px;
    width:200px;
    left: 0px;
    position: relative;
    }
    
    input[type=text], select {
    width: 90%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 2px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
   }
    
    input[type=submit] {
    width: 45%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;  }
    
    pb {
    font-family: "Times New Roman";
    font-style: italic;
    font-size: 40px;
    text-align: center;
} 

.button {
     width: 150%;
    background-color: #4CAF50;
    color: white;
    padding: 7px 0px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.button2 {background-color: #008CBA;} 
               
      </style>
</head>
  <%
    User user =(User) session.getAttribute("name");
	%>    
  
</head>  
<body> 
			<!---start-header----->
			<div class="header"  id="top">
				<div class="wrap">
					<!---start-logo---->
					<div class="logo">
						<a href="Home.html"><img src="projectpic.PNG" title="logo" ></a>
					</div>
					<!---End-logo---->
					<!---start-top-nav---->
					<div class="top-nav">
						<ul>
							<li class="active"><a href="Traprof.jsp">Home</a></li>
							<li><a href="about.html">My Posts</a></li>
							<li><a href="contact.html">Update Profile</a></li>
							<li><a href="Login.jsp">Logoff</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
					<div class="clear"> </div>
					<!---End-top-nav---->
				</div>
			</div> 
			<p>
			<br>
<center><img src="carpool.png" align="middle" alt="Lets Ride" ><center>
<br>
<p> 

  <!--   <pre>
    <p style="font-family:trajanpro;font-size:250%;">       Welcome <%=session.getAttribute("name")%> <p>
    </pre>   -->
    <p>

<pb><i>Please post your travel details!!</i></pb>  
   <p>
   <br>
     <div class="container-fluid">
       <form name="signup" action="/LetsRide/postiti" method="post" onsubmit="return validation();">  
        <fieldset style="width: 300px">  
            
            <table align="center">  
            <div class="form-group">
                <tr>  
                    <td style="font-size:20px">Source</td>  
                    <td><input type="text" name="source" required="required" /></td>
                    <tr><td><div id="addlist" class="alt1" style="padding:10px;">
    
	<button class="button button2" onclick="addInput(addlist)" >More-Input</button>
</div></td></tr>
        </div>  
                 
                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td style="font-size:20px">Destination</td>  
                    <td><input type="text" name="destination" required="required" /></td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td style="font-size:20px">Date</td>  
                    <td><input type=date step=7 name="day" required="required"> </td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>
                

                <tr><td><br></td></tr>
                <div class="form-group">
                  <tr>  
                    <td style="font-size:20px">Hour-</td>  
                    <td> <select name="hour">
  											<option value="6">6</option>
 											<option value="7">7</option>
 											<option value="8">8</option>
 											<option value="9">9</option>
 											<option value="10">10</option>
 											<option value="11">11</option>
 											<option value="12">12</option>
 											<option value="13">13</option>
 											<option value="14">14</option>
 											<option value="15">15</option>
 											<option value="16">16</option>
 											<option value="17">17</option>
 											<option value="18">18</option>
 											<option value="19">19</option>
 											<option value="20">20</option>
 											<option value="21">21</option>
 											<option value="22">22</option>
 											<option value="23">23</option>
 											<option value="24">24</option>
 											<option value="1">1</option>
 											<option value="2">2</option>
 											<option value="3">3</option>
 											<option value="4">4</option>
 											<option value="5">5</option>
										</select> </td>  
                </tr> 
                </div>
                 
                <div class="form-group">
                  <tr>  
                    <td style="font-size:20px">Minute-</td>  
                    <td> <select name="minute">
  											<option value="20">20</option>
 											<option value="30">30</option>
 											<option value="40">40</option>
 											<option value="50">50</option>
 											<option value="10">10</option>
 										
										</select> </td>  
                </tr> 
                </div>
                <tr><td><br></td></tr>            

                <div class="form-group">
                  <tr>  
                    <td style="font-size:20px">Price</td>  
                    <td><input type="text" name="price" required="required" /></td>  
                </tr> 
                </div>
           <tr><td><br></td></tr>
                <div class="form-group">
 
                <tr>  
                    <td style="font-size:20px">Distance</td>  
                    <td><input type="text" name="distance" required="required" /></td>  
                </tr>
                </div>
                <tr><td><br></td></tr>
                <div class="form-group">
                
                <tr>  
                    <td style="font-size:20px">Capacity</td>  
                    <td><input type="text" name="capacity" required="required" /></td>  
                </tr> 
                </div>
                                <tr><td><br></td></tr>
                
                <p>                
                  
                <tr><td colspan=2 align="center"><input type="submit" value="Post" /><td></tr>
               
            
              
            </table>  
        </fieldset>  
    </form>  
    <br>
    <br>
    <a href="#p">@Copyright: A Mustangs Prd.. All Rights Reserved@2016</a>
    
    
				    </div>
  			 	<!---End-contact----->
</body>
</html>
</body>  
</html>  