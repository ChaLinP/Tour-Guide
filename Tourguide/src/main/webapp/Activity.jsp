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
    
     <p style="color:red"><font size="+2">${msg}</font></p>
	 <p style="color:red"><font size="+2">${Error1}</font></p>
	 
	
	<c:forEach var="RDetails" items="${RDetails}">
	
	<c:set var="la" value="${RDetails.language}"/>
	<c:set var="tid" value="${RDetails.tourid}"/>
	<c:set var="bid" value="${RDetails.bookingid}"/>
	

	
	    <br/><br/>
	    <table border="1" style="border-collapse:collapse">
	        <tr>
	             <td>Selected Language</td>
	             <td>${RDetails.language}</td>
	        </tr>
	        <tr>
	             <td>Selected Tour ID</td>
	             <td>${RDetails.tourid}</td>
	        </tr>
	        <tr>
	             <td>Booking ID</td>
	             <td>${RDetails.bookingid}</td>
	        </tr>
	    </table>
	    <br/><br/>
	

	    <c:url value="Update.jsp" var="customerupdate">
	      <c:param name="language" value="${la}"/>
	      <c:param name="tourid" value="${tid}"/>
	      <c:param name="bookingid" value="${bid}"/>
	  
	    </c:url>
	    <a href="${customerupdate}">
	    <input class="book"style="width:8%;padding: 10px 6px" type="button" name="up" value="Update"></a>
	    <form action="DeleteServlet" method="post">
	    <button class="book" style="width:8%;padding: 10px 6px" name="de" value="${RDetails.bookingid}">
	    Delete</button>
	    </form>
	     <br/><br/><br/>
	    
	    </c:forEach>

	 
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
	