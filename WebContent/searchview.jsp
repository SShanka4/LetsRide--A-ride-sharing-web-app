<%@page import="java.util.Iterator"%>
<%@ page import="java.util.*" %>
<%@ page import="com.domain.Travel" %>
<%@ page import="com.domain.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<%
    User user =(User) session.getAttribute("name");
	%>  
<title>Welcome <%=user.getFirstname()%></title>  
</head>  
<body>  <center><img src="letsride.png" align="middle" alt="Lets Ride" ><center>
     
    <h4>  
        Hello, enjoy our search results
        <%=user.getFirstname()%></h4>  
 

        <table width="900px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=5 align="center"
                    style="background-color:aqua;">
                    <b>User Record</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>User Id</b></td>
                <td><b>Destination</b></td>
                <td><b>Source</b></td>
                <td><b>Price</b></td>
                <td><b>Distance</b></td>
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                Travel al = (Travel) request.getAttribute("piList");
                //if (request.getAttribute("piList") != null) {
                	if (al.getId() != 0) {
                    //Travel al = (Travel) request.getAttribute("piList");
                    System.out.println(al);
                    //Iterator itr = al.iterator();
                   // while (itr.hasNext()) {
 
                     //   if ((count % 2) == 0) {
                       //     color = "#eeffee";
                      //  }
                       // count++;
                       // ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
               <td><%=al.getUserid() %></td>
               <td><%=al.getDestination()%></td>
               <td><%=al.getSource()%></td>
                <td><%=al.getPrice()%></td>
                <td><%=al.getDistance()%></td>
            </tr>
            <%
                    }
                
                   else {
                	   
            %>
            <tr>
                <td colspan=5 align="center"
                    style="background-color:#eeffee"><b>No records found</b></td>
            </tr>
            <%            }
            %>
        </table>
        
          <br>
    <br>
    <a href="#p">@Copyright: A Mustangs Prd.. All Rights Reserved@2016</a>
    </body>
</html>