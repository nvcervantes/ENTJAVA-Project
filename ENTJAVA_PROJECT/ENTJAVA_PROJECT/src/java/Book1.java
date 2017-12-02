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


@WebServlet(urlPatterns = {"/Book1"})

public class Book1 extends HttpServlet {
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
           /* if (stock!=null) {
                //out.println("Reserved!");
               pst.executeUpdate();
            }else {
                out.println("This book is not anymore available for reservation");
            }*/
            
            }catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
        }
    }
}
    /* public static void infoBox(String infoMessage, String titleBar)
    {
        /* By specifying a null headerMessage String, we cause the dialog to
           not have a header 
        infoBox(infoMessage, titleBar, null);
    }

    public static void infoBox(String infoMessage, String titleBar, String headerMessage)
    {
        Alert alert = new Alert(AlertType.INFORMATION);
        alert.setTitle(titleBar);
        alert.setHeaderText(headerMessage);
        alert.setContentText(infoMessage);
        alert.showAndWait();
    }
}
    
/*public class Book1 extends HttpServlet {
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html");

      try (
         // Step 1: Allocate a database 'Connection' object
              
         Connection conn = DriverManager.getConnection(
               "jdbc:mysql://localhost:3306/project","root",""); // MySQL
 
         // Step 2: Allocate a 'Statement' object in the Connection
         Statement stmt = conn.createStatement();
      ) {
         // Step 3 & 4: Execute a SQL UPDATE via executeUpdate()
         //   which returns an int indicating the number of rows affected.
         // Increase the price by 7% and qty by 1 for id=1001
         String strUpdate = "update book set stock=stock-1 where id = 1";
         System.out.println("Reserved! " + strUpdate);  // Echo for debugging
         int countUpdated = stmt.executeUpdate(strUpdate);
         System.out.println(countUpdated + " records affected.");
 
         // Step 3 & 4: Issue a SELECT to check the UPDATE.
         String strSelect = "select * from book where id = 1";
         System.out.println("The SQL query is: " + strSelect);  // Echo for debugging
         ResultSet rset = stmt.executeQuery(strSelect);
         while(rset.next()) {   // Move the cursor to the next row
            System.out.println(rset.getInt("id") + ", "
                    + rset.getInt("stock"));
         }
      } catch(SQLException ex) {
         ex.printStackTrace();
      }
      // Step 5: Close the resources - Done automatically by try-with-resources
   }
}*/
