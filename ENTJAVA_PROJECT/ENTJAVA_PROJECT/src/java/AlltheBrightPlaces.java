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
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javax.servlet.annotation.WebServlet;
import javax.swing.JOptionPane; 


@WebServlet(urlPatterns = {"/AlltheBrightPlaces"})

public class AlltheBrightPlaces extends HttpServlet {
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String stock = request.getParameter("stock");

        
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            //Statement stmt = conn.createStatement();

            PreparedStatement pst = conn.prepareStatement("Select stock from book where stock>=1 and id=19");
            ResultSet rs = pst.executeQuery();

           
            if (!rs.first()) {
                    out.println("This book is not anymore available for reservation");

                   
            }else {
                    PreparedStatement pst1 = conn.prepareStatement("Update book set stock=stock-1 where id=19");
                    pst1.executeUpdate();
                    response.sendRedirect(request.getContextPath() + "/index.html");            }
            
            }catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
        }
    }
}
    