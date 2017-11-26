/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shierene
 */

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = {"/Validate"})

public class Validate extends HttpServlet {
    private static final long serialVersionUID=1l;
    
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            PreparedStatement pst = conn.prepareStatement("Select user, pass from login where user=? and pass=?");
            pst.setString(1, user);
            pst.setString(2,pass);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                response.sendRedirect(request.getContextPath() + "/index.html");
            }else {
                response.sendRedirect(request.getContextPath() + "/incorrectcredentials.html");
            }
            
            }catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
        }
    }
    
}
