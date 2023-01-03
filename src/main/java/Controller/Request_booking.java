package Controller;

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
import javax.servlet.http.HttpSession;

@WebServlet("/requestbook")
public class Request_booking extends HttpServlet {

	
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
       
      int result;
		
        try {
        	
        	 PrintWriter out = response.getWriter();
//             session.getAttribute("user_id");
//           String tid = request.getParameter("user_id");
//           int sid= Integer.parseInt(tid);
             String status = request.getParameter("status");
             String date = request.getParameter("date");
             String time_slot = request.getParameter("time_slot");
             String place = request.getParameter("place");
             String cid = request.getParameter("req_id");
             int reqid= Integer.parseInt(cid);

         
        	Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/DevRev?verifyServerCertificate=false&useSSL=true","root","samyak123");
			
			PreparedStatement ps = conn.prepareStatement("update request_booking set date=?,time_slot=?,place=?,status=? where req_id=?");

        
				 
			ps.setInt(5, reqid);
	            
			ps.setString(1, date);

            ps.setString(2, time_slot);
            ps.setString(3, place);
            ps.setString(4, status);
                        

         
           result= ps.executeUpdate();
        

       	
            if (ps.executeUpdate() == 1) {
            	  out.println("Update Successful");
          response.sendRedirect("Admin_Dashboard.jsp");
                
            } else {
                out.println("Invalid");
            }

        } catch (Exception e) {
        	e.printStackTrace();
        }

    }

    }