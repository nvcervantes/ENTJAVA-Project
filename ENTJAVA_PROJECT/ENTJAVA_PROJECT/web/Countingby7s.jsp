<%-- 
    Document   : Countingby7s
    Created on : 12 5, 17, 6:03:42 PM
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
        <title> Counting by 7s </title>
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
                                <a href="login.jsp" style ="color: #3D4A39">Log in</a>
			</nav>
		</header>
        <section id="banner">
		</section>
		<section id="banner1">
		</section>
		<section id="content">
			<div id="imagecontainer1">
				<div id="imagecontainer1" class="images">
                                            <img src="photos/W_4_Counting by 7s.jpg">
                                    
                                    
				</div>
			</div> <aside id="infospace1">
                                <div id="imagecontainer2" class="images">
                                          
                                <form action="Countingby7s" method="post">
                               <button type="submit" style="display: inline-block;float: center; margin-left: 60px; margin-top: 150px; margin-right: 5px;" class="reserve"> <h1> <font color="white">  Reserve Book </h1> </font> </button> 
                               </form>                                 
				<br/>
			
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
                             <a href="https://apc.edu.ph/" target="_blank"> <b> © 2017  Asia Pacific College Library. All Rights Reserved |</b> </a>
			</center>
		</footer>
       
    </body>
</html>
