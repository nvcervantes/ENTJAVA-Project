
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shierene
 */


@WebServlet(urlPatterns = {"/WorldHistoryinMinutes"})

public class WorldHistoryinMinutes extends HttpServlet {
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

            PreparedStatement pst = conn.prepareStatement("Select stock from book where stock>=1 and id=4");
            ResultSet rs = pst.executeQuery();

           
            if (!rs.first()) {
                    response.sendRedirect(request.getContextPath() + "/notavailable.jsp");            

                   
            }else {
                    PreparedStatement pst1 = conn.prepareStatement("Update book set stock=stock-1 where id=4");
                    pst1.executeUpdate();
                    response.sendRedirect(request.getContextPath() + "/available.jsp");            
                   }
            
            
            }catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
        }
    }
}
     

