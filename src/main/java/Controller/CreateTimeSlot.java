package Controller;

import java.io.IOException;
import java.io.PrintWriter;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
/*import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;*/

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/createtimeslot")
public class CreateTimeSlot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateTimeSlot() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("1");
		//PrintWriter out = response.getWriter();
		PrintWriter out = response.getWriter();
	        
        
        String place = request.getParameter("place");
        String time_slot = request.getParameter("time_slot");
    
        String date = request.getParameter("date");
        String status = request.getParameter("status");

        
//        if(user_pass.equals(pass1)){
	    try {
	      Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/DevRev?verifyServerCertificate=false&useSSL=true","root","samyak123");
	      PreparedStatement ps = con.prepareStatement
                  ("insert into available_slot(date,time_slot,date,status,place) values(?,?,?,?)");
	  	System.out.println("3");
	      ps.setString(4, place);

          ps.setString(2, time_slot);
          ps.setString(1, date);
       
          ps.setString(3, status);
        
    
          
      	System.out.println("4");
      int i = ps.executeUpdate();
  	System.out.println("5");
      if(i > 0) {
         response.sendRedirect("User_Dashboard.jsp");
      }
      else {
 out.print("invalid");
  }
	    }
  catch(Exception se) {
      se.printStackTrace();
	      
	      
	    }
	  
	    }
	    
//	  else {
//	    	System.out.println("Password and Confirm password mismatch");
//       
//	}
}
