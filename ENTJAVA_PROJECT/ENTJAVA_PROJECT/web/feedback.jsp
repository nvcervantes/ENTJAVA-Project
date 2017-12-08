<%@page session="true"%>

<%-- 
    Document   : feedback
    Created on : 12 5, 17, 9:46:27 PM
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
        <title> Feedback</title>
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
                                <a href="reservation.jsp" style ="color: #3D4A39" >Reservation</a>
                                <a href="index.jsp" style ="color: #3D4A39">Log out</a>
                                <a href="login.jsp" style ="color: #3D4A39">Hello, ${user}</a>
			</nav>
		</header>
        
        <section id="banner">
		</section>
		<section id="banner1">
		</section>
                       <section id="content">

        <div class="container5">
   <form action="display_form_entry.jsp">

    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstName" placeholder="First Name" style="height:50px; width:900px">
    <br>
    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastName" placeholder="Last Name"style="height:50px; width:900px">
    <br>
    <label for="level">Year Level</label>
   
    <select id="level" name="yearLevel"style="height:50px; width:900px">
      <option value="Senior">Senior</option>
      <option value="Junior">Junior</option>
      <option value="Sophomore">Sophomore</option>
      <option value="Freshman">Freshman</option>

    </select>
    <br>
    <br>
    <label for="subject">Comments / Suggestions </label>
    <br>
    <h3><textarea id="subject" name="subject" placeholder="Write something..." style="height:200px; width:980px"></textarea></h3>
    <br>
    <input type="submit" value="Submit">

  </form>
</div>
                           </section>
        
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
       
    </body>
</html>
