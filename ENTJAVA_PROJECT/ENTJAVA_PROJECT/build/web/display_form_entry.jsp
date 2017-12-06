<%-- 
    Document   : display_form_entry
    Created on : 11 13, 17, 4:26:01 PM
    Author     : Shierene
    --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="home.css">
        <title>Bibliotheque</title>
    </head>
    <body>
        <%
            //get the parameter from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String yearLevel = request.getParameter("yearLevel");
            String subject = request.getParameter("subject");
            
            %>
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
        <section id ="content">
            <div class="container5">
                <!-- <h3>Here are the information that you entered:</h3>
                    <label for="fname">First Name</label>
                    < %=firstName%>
                    <br>
                    <label for="lname">Last Name</label>
                     < %=lastName%>    <br>
                    <label for="country">Year Level</label>
                      < %=yearLevel%> 
                    <br>
                    <br>
                    <label for="subject">Comments / Suggestions </label>
                    <br>
                    <h3>< %=subject%></h3>
                    <br>
                    <input type="submit" value="Submit">-->
                <%@ page import="java.sql.*" %>
                <%
                    Connection conn = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                    //String =request.getParameter("firstName");
                    // String t2=request.getParameter("lastName");
                    
                     PreparedStatement pst = conn.prepareStatement("insert into feedback (firstName, lastName, yearLevel, subject)"
                    + " values (?, ?, ?, ?)");
                    pst.setString(1, firstName);
                    pst.setString(2, lastName);
                    pst.setString(3, yearLevel);
                    pst.setString(4, subject);
                    
                    
                                 pst.executeUpdate();
                                 
                     %>
                <h2>Thank you for sending your feedback! Rest assured we will as ever be committed to providing you nothing but the best!</h2>
                <h3>Here are the information that you entered:</h3>
                <h3> <label for="firstName">First Name: </label><%=firstName%></h3>
                <h3><label for="lastName">Last Name: </label><%=lastName%> </h3>
                <h3><label for="yearLevel">Year Level: </label><%=yearLevel%></h3>
                <h3><label for="subject">Comments / Suggestions: </label><%=subject%></h3>
                <br>
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
                <a href="https://apc.edu.ph/" target="_blank"> <b> © 2017  Asia Pacific College Library. All Rights Reserved</b> </a>
            </center>
        </footer>
    </body>
</html>