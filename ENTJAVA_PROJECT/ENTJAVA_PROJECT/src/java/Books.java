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


@WebServlet(urlPatterns = {"/Books"})

public class Books extends HttpServlet {
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       // int id = Integer.parseInt ("id");
       // int stock = Integer.parseInt ("stock");
        String id = request.getParameter("id");
        String stock = request.getParameter("stock");
        //id = book.id;
       // int stock;
       
        
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                     //Statement stmt = conn.createStatement();

      //String strUpdate = "Update book set stock=stock-1 where id=1";
         //int countUpdated = stmt.executeUpdate(strUpdate);
           PreparedStatement pst = conn.prepareStatement("Update book set stock=stock-1 where id=1");
           //pst.setInt(1, id);
           //pst.setInt(2, stock);
          // pst.setString(1, id);
          // pst.setString(2, stock);
            
            pst.executeUpdate();
            response.sendRedirect(request.getContextPath() + "/index.html");

            //JOptionPane.showMessageDialog(null,"ALERT MESSAGE","TITLE",2);
            //JOptionPane.showMessageDialog(null, 
                                      //    "ALERT MESSAGE", 
                                       //   "TITLE", 
                                        //  JOptionPane.PLAIN_MESSAGE);
            //Book1.infoBox("YOUR INFORMATION HERE", "TITLE BAR MESSAGE");
           /* if (countUpdated==1) {
                //out.println("Reserved!");
            out.println("Reserved! ");  // Echo for debugging
            //response.sendRedirect(request.getContextPath() + "/index.html");
            }else {
                out.println("This book is not anymore available for reservation");
            }*/
            
            }catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
        }
    }
}