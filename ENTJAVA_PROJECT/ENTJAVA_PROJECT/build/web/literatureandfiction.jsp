<%@page session="true"%>

<%-- 
    Document   : literatureandfiction
    Created on : 12 5, 17, 9:56:19 PM
    Author     : Shierene 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title> Collections </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="home.css">
    </head>
    <body>
        <header>
                    <h1 style="display: inline;"> <a href="index.jsp" target='_blank'> <img id="logo" src="photos/Logo.jpg"/> </a></h1>
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
				<a href="index.jsp" style ="color: #6b2f23" >Home</a>
                                <a href="aboutus.jsp" style ="color: #3D4A39">About Us</a>
				<a href="collections.jsp" style ="color: #3D4A39">Collections</a>
                                <a href="reservations.jsp" style ="color: #3D4A39" >Reservation</a>
                                <a href="logout" style ="color: #3D4A39">Log out</a>
                                <a href="login.jsp" style ="color: #3D4A39">Hello, ${user}</a>
			</nav>
		</header>
        <section id="banner">
		</section>
		<section id="banner1">
		</section>
		<section id="content">
			<!--<div id="imagecontainer1">
				<div id="imagecontainer1" class="images">
                                            <img src="photos/aboutushello.jpg">
                                    
                                    
				</div>
			</div> <aside id="infospace1">
                                <div id="imagecontainer2" class="images">
                                          
                                <img src="photos/aboutus.jpg">
                                
				<br/>
                                <br>
                                <br>
                                <br>-->
                                
		
        <div class="body-content">
    <div class="slideshow-container">
        <nav id="headnav">
				<a href="collections.jsp" style ="color: #3D4A39" >Education and Reference</a>
                                <a href="classicsandpoetry.jsp" style ="color: #3D4A39">Classics and poetry</a>
				<a href="literatureandfiction.jsp" style ="color: #6b2f23">Literature & fiction</a>
                                <a href="scienceandnature.jsp" style ="color: #3D4A39" >Science and Nature</a>
                                <a href="history.jsp" style ="color: #3D4A39">History, Politics & Social Sciences </a>
			</nav>
        <div class="mySlides">
            <center><img src="photos/education.JPG" align="middle" style="width:650px;height:100px;"> </center>
        </div>
        <div class="mySlides">
            <center><img src="photos/literature.JPG" align="middle"  style="width:650px;height:100px;"> </center>
        </div>
        <div class="mySlides">
            <center><img src="photos/classics.JPG" align="middle"  style="width:650px;height:100px;"> </center>
        </div>
        <div class="mySlides">
            <center><img src="photos/science.JPG" align="middle"  style="width:650px;height:100px;"> </center>
        </div>
        
    </div>
    <br>
    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
    </div>
    </section>
    <script>
        var slideIndex = 0;
        showSlides();
        
        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
               slides[i].style.display = "none";  
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}    
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";  
            dots[slideIndex-1].className += " active";
            setTimeout(showSlides, 2000); // Change image every 2 seconds
        }
          
        
    </script>
    <section class="NewArrival" id="horimenu2">
        
        <div class="container">
        <div id="container">
        <div id="left"> <div id="container" class="images">
                <a href="IQ84.jsp">
                    <img src="photos/1 _ 1Q84.jpg" >    
                </a>
		</div> </div>

  <div id="right"> <div id="container" class="images">
                    <a href="AllTheBrightPlaces.jsp">
                    <img src="photos/3 _ All The Bright Places.jpg"> 
                    </a>
		</div></div>
  <div id="center"> <div id="container" class="images">
                     <a href="AMillionWorlds.jsp">
                    <img src="photos/2 _ A Million Worlds with You.jpg">
                     </a>
		</div></div>
</div>
            
 </section>
    
    <section class="NewArrival" id="horimenu2">
        
        <div class="container">
        <div id="container">
       <div id="left"> <div id="container" class="images">
                <a href="EleanorandPark.jsp">
                    <img src="photos/4 _ Eleanor & Park.jpg" >    
                </a>
		</div> </div>
             
  <div id="right"> <div id="container" class="images">
                   <a href="Love.jsp">
                    <img src="photos/6 _ Love, Rosie.jpg"> 
                   </a>
		</div></div>
  <div id="center"> <div id="container" class="images">
                    <a href="Five.jsp">
                    <img src="photos/5 _ Five People.jpg">  
                    </a>
		</div></div>
     </div> </section>
    
    <section class="NewArrival" id="horimenu2">
        
        <div class="container">
        <div id="container">
        <div id="left"> <div id="container" class="images"> 
                <a href="LoveintheTime.jsp">
                <img src="photos/7 _ Love in the Time of Cholera.jpg">
                </a>
        </div></div>
        <div id="right"> <div id="container" class="images">
                    <a href="TheOneThatGotAway.jsp">
                    <img src="photos/9 _ The One That Got Away A Novel.jpg">  
                    </a>
        </div></div>
        <div id="center"> <div id="container" class="images">
                    <a href="TheAlchemist.jsp">  
                    <img src="photos/Alchemist.jpg">  
                    </a>
		</div></div>
     </section>
     <section class="NewArrival" id="horimenu2">
        
        <div class="container">
        <div id="container">
        <div id="left"> <div id="container" class="images"> 
                 <a href="ThePaperMenagerieandOtherStories.jsp"> 
                <img src="photos/10 _ The Paper Menagerie and Other Stories.jpg">
                 </a>
            </div></div> </section>
        <footer>
			<div id="backtotop">
				<i id="chevron"></i>
			</div>
			<div id="footstuff">
				
				<div class="footcontain">
					<h4 style ="color: #3e312a">About bibliotheque</h4>
					<p style ="color: #3e312a">Learn more about the bibliotheque, its structure, how it works, and the people behind it.</p>
					<ul>
					<li ><a href="aboutus.jsp">About us</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					
					<li><a href="feedback.jsp">Send your feedback</a></li>
					</ul>
				</div>
				
				
				</div>
		</footer>
		<footer id="apcfooter">
			<center>
                             <a href="https://apc.edu.ph/" target="_blank"> <b> © 2017  Asia Pacific College Library. All Rights Reserved </b> </a>
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
