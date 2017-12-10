<%@page session="true"%>

<%-- 
    Document   : reservation
    Created on : 12 5, 17, 10:02:09 PM
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
        <title> About Us</title>
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
                                <a href="logout" style ="color: #3D4A39">Log out</a>
                                <a href="login.jsp" style ="color: #3D4A39">Hello, ${user}</a>
			</nav>
		</header>
        <section id="banner">
		</section>
       
		<section id="banner1">
		</section>
        <section id ="content">
            <div class ="center">
            <center><h2> <img src="photos/books.jpg"  style="width:150px;height:100px;">Reserve Now!</h2></center> 
            <br>
            <center><h3>In order to reserve a title that's on the library catalogue,
                    <br> you need to be a library member. Follow the instructions below
                    <br> to reserve a book or simply click the "Register" button. </h3></center>
            </div>
        </section>
        <section class="NewArrival" id="horimenu2">
            <br>
            <br>
			<div id="imagecontainer1">
                            <h3> Hi, ${user}!</h3>
                            <h1>These are the books that you have reserved: </h1>
                            <%@ page import="java.sql.*" %>

                            <%
                        try
                        {
                        Class.forName("com.mysql.jdbc.Driver");
                        //String url="jdbc:mysql://localhost/test";
                        Connection conn = null;
                        String user = request.getParameter("user");
                        conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                         PreparedStatement pst = conn.prepareStatement("select * from user_books");
                         ResultSet rs=pst.executeQuery();
                        while(rs.next())
                        {

                        %>
                        <h3>*<%=rs.getString("book") %></h3>
                                <%

                        }
                        %>
                        <%
                            rs.close();
                            pst.close();
                            conn.close();
                            }
                        catch(Exception e)
                        {
                            e.printStackTrace();
                            }
                        %>

			</div> <aside id="infospace1">
                                <div id="imagecontainer2" class="images">
                                          
                                <img src="photos/q1.jpg">
                                
				<br>
                                <br>
                                <br>
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
