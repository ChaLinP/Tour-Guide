<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!--Tabs-->
    <div class="tab">
	    <button class="button button1" onclick="openTab(event, 'Home')" id="defaultOpen">
		<span class="fa fa-home b1"></span>Home</button>
	    <button class="button button1" onclick="openTab(event, 'Tour')">
		<span class="fa fa-gears b1"></span>Tour Management</button>
	    <button class="button button1"  onclick="openTab(event, 'Feedback')">
		<span class="fa fa-comments b1"></span>Feedback Portal</button>
		<button class="button button1"  onclick="openTab(event, 'Activity')">
		<span class="fa fa-tasks b1"></span>My Activity</button>
		<button class="button button1"  onclick="openTab(event, 'Profile')">
		<span class="fa fa-user b1"></span>Profile</button>
	</div> 
	<!-- Tab content -->
      <div id="Home" class="tabcontent">
      <p class="letter"><font size="+5">P</font>ortal to Amazing Adventures</p>
	  <div class="row">
         <div class="column">
		    <div class="opt">
			    <center>                
			    <img src="images/Kandy.jpeg" alt="Kandy" style="width:270px;height:200px;border-radius:20px;" >
			    <p class="title">Kandy Tour</p>
				<span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart notchecked"></span>
				<br><br>
				<form action="bookservlet" method="post">
			    <button class="book" value="1" name="book">Book</button>
			    </form>
			    </center>
				<br>
			</div>
         </div>
         <div class="column">
		    <div class="opt">
		        <center>
                <img src="images/Sigiriya.png" alt="Dambulla" style="width:270px;height:200px;border-radius:20px;">
				<p class="title">Dambulla Tour</p>
				<span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart notchecked"></span>
                <span class="fa fa-heart notchecked"></span>
				<br><br>
				<form action="bookservlet" method="post">
				<button class="book" value="2" name="book">Book</button>
				</form>
				<br>
				</center>
			</div>	
         </div>
         <div class="column">
		    <div class="opt">
			     <center>
                 <img src="images/NuwaraEliya.jpg" alt="NuwaraEliya" style="width:270px;height:200px;border-radius:20px;">
				 <p class="title">Nuwara Eliya Tour</p>
				 <span class="fa fa-heart checked"></span>
                 <span class="fa fa-heart checked"></span>
                 <span class="fa fa-heart notchecked"></span>
                 <span class="fa fa-heart notchecked"></span>
                 <span class="fa fa-heart notchecked"></span>
				 <br><br>
				 <form action="bookservlet"method="post">
				 <button class="book" value="3" name="book">Book</button>
				 </form>
				 </center>
				 <br>
			</div>	 
         </div>
      </div> 
	  <div class="row">
         <div class="column">
		    <div class="opt" style="justify-content: center">
			    <center>
                <img src="images/Galle.jpeg" alt="Galle" style="width:270px;height:200px;border-radius:20px;" >
			    <p class="title">Galle Tour</p>
				<span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart notchecked"></span>
                <span class="fa fa-heart notchecked"></span>
				<br><br>
				<form action="bookservlet" method="post">
			    <button class="book" value="4" name="book">Book</button>
			    </form>
			    </center>
				<br>
			</div>
         </div>
         <div class="column">
		    <div class="opt">
			    <center>
                <img src="images/Jaffna.png" alt="Jaffna" style="width:270px;height:200px;border-radius:20px;">
				<p class="title">Jaffna Tour</p>
				<span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart checked"></span>
                <span class="fa fa-heart notchecked"></span>
                <span class="fa fa-heart notchecked"></span>
				<br><br>
				<form action="bookservlet" method="post">
				<button class="book" value="5" name="book">Book</button>
				</form>
				</center>
				<br>
			</div>	
         </div>
         <div class="column">
		    <div class="opt">
			     <center>
                 <img src="images/Ella.jpg" alt="Ella" style="width:270px;height:200px;border-radius:20px;">
				 <p class="title">Ella Tour</p>
				 <span class="fa fa-heart checked"></span>
                 <span class="fa fa-heart checked"></span>
                 <span class="fa fa-heart checked"></span>
                 <span class="fa fa-heart checked"></span>
                 <span class="fa fa-heart checked"></span>
				 <br><br>
				 <form action="bookservlet" method="post">
				 <button class="book" value="6" name="book">Book</button>
				 </form>
				 </center>
				 <br>
			</div>	 
         </div>
      </div> 
	  </div>
	  <div id="Tour" class="tabcontent">
	   <div class="row">
         <div class="column">
		    <div class="opt1">
			    <center>
                <img src="images/Kandy.jpeg" alt="Kandy" style="width:270px;height:200px;border-radius:20px;" >
				<button class="bookings"><a href="TM.html">Manage</a></button>
			    <p class="title">Kandy Tour</p>
				</center>
			</div>
         </div>
         <div class="column">
		    <div class="opt1">
			    <center>
                <img src="images/Sigiriya.png" alt="Dambulla" style="width:270px;height:200px;border-radius:20px;">
				 <button class="bookings"><a href="TM.html">Manage</a></button>
				<p class="title">Dambulla Tour</p>
				</center>
			</div>	
         </div>
         <div class="column">
		    <div class="opt1">
			     <center>
                 <img src="images/NuwaraEliya.jpg" alt="NuwaraEliya" style="width:270px;height:200px;border-radius:20px;">
				 <button class="bookings"><a href="TM.html">Manage</a></button>
				 <p class="title">Nuwara Eliya Tour</p>
				 </center>
			</div>	 
         </div>
      </div> 
	  <div class="row">
         <div class="column">
		    <div class="opt1">
			    <center>
                <img src="images/Galle.jpeg" alt="Galle" style="width:270px;height:200px;border-radius:20px;" >
				 <button class="bookings"><a href="TM.html">Manage</a></button>
			    <p class="title">Galle Tour</p>
				</center>
			</div>
         </div>
         <div class="column">
		    <div class="opt1">
			    <center>
                <img src="images/Jaffna.png" alt="Jaffna" style="width:270px;height:200px;border-radius:20px;">
				<button class="bookings"><a href="TM.html">Manage</a></button>
				<p class="title">Jaffna Tour</p>
				</center>
			</div>	
         </div>
         <div class="column">
		    <div class="opt1">
			     <center>
                 <img src="images/Ella.jpg" alt="Ella" style="width:270px;height:200px;border-radius:20px;">
				  <button class="bookings"><a href="TM.html">Manage</a></button>
				 <p class="title">Ella Tour</p>
				 </center>
			</div>	 
         </div>
	  </div>
	  </div>
	  <div id="Feedback" class="tabcontent">
	    <button class="Feedback"><a href="feedback.html">+</a></button>
		<!--Insert the feedback Portal content here-->
	  
	  </div>
	  <div id="Activity" class="tabcontent">
	    <!--Insert My Activity content here-->
	    <form action="ActivityServlet" method="post">
	    <label for="ui">User Id</label><br/><br/>
	    <input type="text" id="ui" name="id">
	    <br/><br/>
	    <button class="book" style="width:8%;padding: 10px 6px">Show</button>
	    </form>
	  </div>
	  <div id="Profile" class="tabcontent">
	    <!--Insert Profile content here-->
		<br>
	  <button class="list" style="width:200px;"><a href="profile.html">Edit Profile</a></button>
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
    <script>
		function openTab(evt, tabName) {
  			// Declare all variables
			var i, tabcontent, tablinks;

			// Get all elements with class="tabcontent" and hide them
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}

			// Get all elements with class="tablinks" and remove the class "active"
			tablinks = document.getElementsByClassName("button button1");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(" active", "");
			}

			// Show the current tab, and add an "active" class to the link that opened the tab
			document.getElementById(tabName).style.display = "block";
			evt.currentTarget.className += " active";
			
			} 
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen").click();
	</script>
</html>