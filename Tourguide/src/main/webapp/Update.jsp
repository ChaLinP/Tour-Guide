<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Sensation</title>
<link rel ="stylesheet" href ="home1.css">
<!-- Add icon library -->
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="body2">
     <!--Name-->
    <h1>
	<img src="images/logo.png" alt="logo" style="border-radius:100%;width:40px;height:40px;float:left;">
	Sensa<font color="#f6877e">t</font><font color="#8D021F">i</font>on
	</h1>
	<!--bar-->
    <div class="nav">
	   <button class="list"><a href="login.jsp">Log out</a></button><span class="fa fa-gear set"></span>
	</div>
	<br>
	
    <div class="face">
    
    <%String lang=request.getParameter("language");
      String tid=request.getParameter("tourid");
      String bid=request.getParameter("bookingid");
     %>
	<form action="UpdateServlet" method="post">
	    <table border="1">
	        <tr>
	             <td>Selected Language</td>
	             <td><input type="text" name="lg" value="<%=lang %>"/></td>
	        </tr>
	        <tr>
	             <td>Selected Tour ID</td>
	             <td><input type="text" name="td" value="<%=tid %>"readonly/></td>
	        </tr>
	        <tr>
	             <td>Booking ID</td>
	             <td><input type="text" name="bd" value="<%=bid %>" readonly/></td>   
	        </tr>
	    </table>
	    <br/><br/>
	    <button class="book" name="up" >Confirm</button>
	    </form>
	 
	<br>
	<button class="list"><a href="home.jsp">Exit</a></button>
	</div>
      <div class="nav">
	  <!-- Add font awesome icons -->
	  <center>
	        <a href="https://www.instagram.com/" class="fa fa-instagram grad"></a>
            <a href="https://web.facebook.com/" class="fa fa-facebook grad"></a>
            <a href="https://twitter.com/" class="fa fa-twitter grad"></a>
	  </center>
	  </div>
</body>
</html>	
	