<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!--Insert the content-->
	
	<c:forEach var="tour" items="${TourDetails}">
	
	<p class="letter"><font size="+5">${tour.name}</font></p>
	<br/>
	<p class="para"><font size="+2">${tour.description}</font></p>
	<br/>
	<ul>
	   <li>Tour ID : ${tour.id}</li>
	   <li>Maximum spaces : ${tour.maxV}</li>
	   <li>Available spaces : ${tour.availability}</li>
	</ul>
	<br/>
	<form action="DetailsServlet" method="post">
	<div class="quiz">
	<label for="t1" style="font-weight:bold">1. Enter Tour ID </label>
	<br/><br/>
	<input type="text" id="t1" name="t1" value="${tour.id}">
	<br/><br/>
	</div>
	<br/><br/>
	<div class="quiz">
	<label for="u1" style="font-weight:bold">2. Enter User ID </label>
	<br/><br/>
	<input type="text" id="u1" name="u1">
	<br/><br/>
	</div>
	<br/><br/>
	<div class="quiz">
	   <label style="font-weight:bold">3. How many are traveling ?</label>
	   <br/><br/>
	   <label>Adult :</label>
	   <select name="AdNo">
	      <option value="0">0</option>
	      <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
      </select>
      <br/><br/>
      <label>Child :</label>
	   <select name="ChNo">
	      <option value="0">0</option>
	      <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
      </select>
      <br/><br/>
      <label>Infant :</label>
	   <select name="InNo">
	      <option value="0">0</option>
	      <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
      </select>
      <br/><br/>
	</div>
	<br/><br/>
	<div class="quiz">
	<br/>
	   <label style="font-weight:bold">4. Select accommodation</label>
	   <br/><br/>
	   <label>Double room(s) Rs35,000/= :</label>
	   <select name="DouNo">
	      <option value="0">0</option>
	      <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
      </select>
      <br/><br/>
      <label>Triple room(s)  Rs40,000/= :</label>
	   <select name="TriNo">
	      <option value="0">0</option>
	      <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
      </select>
      <br/><br/>
	</div>
	<br/><br/>
	<div class="quiz">
	<br/>
	   <label style="font-weight:bold">5. Select guide's language</label>
	   <br/><br/>
	     <input type="radio" id="lang1" name="language" value="Sinhala">
         <label for="lang1">Sinhala</label><br/><br/>
         <input type="radio" id="lang2" name="language" value="English">
         <label for="lang2" >English</label><br/><br/>
         <input type="radio" id="lang3" name="language" value="Tamil">
         <label for="lang3">Tamil</label><br/><br/>
         <input type="radio" id="lang4" name="language" value="Chinese">
         <label for="lang4"> Chinese</label>
      <br/><br/>
	</div>
	<br/><br/>
	<div class="quiz">
	<br/>
	   <label style="font-weight:bold">6. Add payment details </label>
	   <br/><br/>
	     <label for="d1">Cardholder name</label><br/>
	     <input type="text" id="d1" name="d1">
         <br/><br/>
         <label for="d2" >Card number</label><br/>
         <input type="text" id="d2" name="d2">
         <br/><br/>
         <label for="d3">Expiry date</label>
         <label for="d4">CVV</label><br/>
         <input style="width:8%" type="text" id="d3" name="d3">         
         <input style="width:8%" type="text" id="d4" name="d4">
         <br/><br/>
         <button style="width:8%;padding: 10px 6px" name="tot" value="">Pay</button>
      <br/><br/>
	</div>
	<input class="form" type="checkbox" id="check" name="check" onclick="enableButton()"required>
	<label for="check"></label>Accept privacy policy and terms
	<br/><br/>
	</form>
	</c:forEach>
	
	<div class="quiz">
	<br/>
	   <label style="font-weight:bold">7. Total payment</label>
	   <br/><br/>
	     <c:set var="cash" value="${Total}"/>
	     <c:set var="Error" value="${Error}"/>
	       <p><font size="+2">${Total}</font></p>
	       <p style="color:red;font-weight:bold"><font size="+2">${Error}</font></p>
	       <c:set var="msg" value="${msg}"/>
	       <p style="color:red"><font size="+2">${msg}</font></p>
	       <c:set var="Error1" value="${Error1}"/>
	       <p style="color:red;font-weight:bold"><font size="+2">${Error1}</font></p>      
      <br/><br/>
	</div>
	
    <br/><br/>
	
	
	
	<br/><br/>
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
	