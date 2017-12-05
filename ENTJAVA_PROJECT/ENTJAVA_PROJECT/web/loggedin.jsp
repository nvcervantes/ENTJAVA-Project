<%@page session="true"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.

-->
<html>
    <head>
        <title> Bibliotheque </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="home.css">
    </head>
    <body>
		<header>
                    <h1 style="display: inline;"> <a href="index.html" target='_blank'> <img id="logo" src="photos/Logo.jpg"/> </a></h1>
			<button style="display: inline-block;float: right; margin-left: -5px; margin-top: 4px; margin-right: 30px;" class="userbutt" onclick="redirect()">Search</button>
				<table border="0" style="display: inline; float: right;">
					<tr style="display: inline;">
                                            <td style="color: #dbae8b"> <b> Can't find what you're looking for? </b> </td>
					<td align="left"><input class="inputfield" type="search" name="search" style=" background: url(photos/search.jpg);background-color: rgba(100, 100, 100, 0.3); background-size: 30px; padding-left: 35px; background-repeat: no-repeat;" size="20" maxlength="50" /></td>
					</tr>
					<tr style="display: inline;">
					<td colspan="2" align="center">
					</td>
					</tr>
				</table>

			<nav id="headnav">
				<a id="current" style ="color: #6b2f23" >Home</a>
                                <a href="aboutus.html" style ="color: #3D4A39">About Us</a>
				<a href="collections.html" style ="color: #3D4A39">Collections</a>
                                <a href="reservation.html" style ="color: #3D4A39" >Reservation</a>
                                <a href="login.html" style ="color: #3D4A39">Log out</a>
                                <a href="login.html" style ="color: #3D4A39">Hello, ${user}</a>
			</nav>
		</header>
		<section id="banner">
		</section>
		<section id="banner1">
		</section>
		<section id="content">
			<div id="imagecontainer">
				<div id="image1container" class="images">
					<a href="reservation.html" target='_blank'>
						<img src="photos/banner.jpg">
                                      </a>
				</div>
			</div>
			<aside id="infospace">
				<h2 style ="color: #dbae8b"> | E V E N T S | </h2>
                                <br>
                                <br>
                                <a href="events.html" target='_blank'>
                                <img src="photos/mibf.jpg">
                                </a>
				<br/>
			
		</section>
		<section class="BookSuggestions" id="vertmenu">
			<div class="verticalmenu" id="juan">
				<div class="vertcontain">
					<ul>
                                            <li>
                                                <img class= "partnerimg" src= "photos/Book1.jpg">
						</li>
						<li>
							<img src= "photos/Book2.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book3.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book4.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book5.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book6.jpg">
						</li>
                                                
					</ul>
				</div>
			</div>
			<div id="rightcontain">
				<h2 style ="color: #7d6557"> | Book Suggestions |</h2>
                                <br>
				<p style ="color: #7d6557"> New or Old, these books might be the one you are looking for.
                                    <br>
                                    These are the books recommended just for you.  </p>
				<br>
				
			</div>
		</section>
<section class="NewArrival" id="horimenu2">
			<div class="verticalmenu" id="juan">
				<div class="vertcontain">
					<ul>
                                            <li>
                                                <img class= "partnerimg" src= "photos/Book7.jpg">
						</li>
						<li>
							<img src= "photos/Book8.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book9.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book10.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book11.jpg">
						</li>
                                                	<li>
							<img src= "photos/Book12.jpg">
						</li>
                                                
					</ul>
				</div>
			</div>
		
			<div id="rightcontain">
				<h2 style ="color: #7d6557"> | New Arrivals |</h2>
                                <br>
				<p style ="color: #7d6557"> New books at bibliotheque.
                                    <br>
                                    Reserve a book today.  </p>
				<br>
				
			</div>
		</section>
                <br>
                 <br>
		<footer>
			<div id="backtotop">
				<i id="chevron"></i>
			</div>
			<div id="footstuff">
				
				<div class="footcontain">
					<h4 style ="color: #3e312a">About bibliotheque</h4>
					<p style ="color: #3e312a">Learn more about the bibliotheque, its structure, how it works, and the people behind it.</p>
					<ul>
					<li ><a href="aboutus.html">About us</a></li>
					<li><a href="contact.html">Contact</a></li>
					
					<li><a href="feedback.html">Send your feedback</a></li>
					</ul>
				</div>
				
				
				</div>
		</footer>
		<footer id="apcfooter">
			<center>
                             <a href="https://apc.edu.ph/" target="_blank"> <b> © 2017  Asia Pacific College Library. All Rights Reserved |</b> </a>
			</center>
		</footer>
                <!-- <h2>Modal Login Form</h2>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
      <input type="checkbox" checked="checked"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>-->
       
        
    </body> 
</html>
