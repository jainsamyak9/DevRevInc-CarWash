package Controller;

import Model_Class.User_Login_Model;
import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class UserProfile
 */
@WebServlet("/UserLoginController")

    /**
     * @see HttpServlet#HttpServlet()
     */
    
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */


public class UserController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	 
    	  //  int s_id= Integer.parseInt(tid);
    	    String user_email = request.getParameter("user_email");
    	    String user_pass = request.getParameter("user_pass");
    	    System.out.println(user_email);
            System.out.println(user_pass);

        if (User_Login_Model.validateUser(user_email, user_pass) != 0) {

            HttpSession session = request.getSession();

            Date lastvisit = new Date();
            
           
            
            
            
            session.setAttribute("user_id", User_Login_Model.getUser_id());

            session.setAttribute("user_name", User_Login_Model.getUser_name());
            session.setAttribute("user_pass", User_Login_Model.getUser_pass());
            
            session.setAttribute("user_email", User_Login_Model.getUser_email());
            session.setAttribute("time_slot", User_Login_Model.getTime_slot());
            session.setAttribute("status", User_Login_Model.getStatus());
            session.setAttribute("user_number", User_Login_Model.getUser_number());
            session.setAttribute("place", User_Login_Model.getPlace());
           

            session.setAttribute("lastvisit", lastvisit.toString());

            //response.sendRedirect("http://localhost:8080/SchoolManagement/studentdashboard.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("User_Dashboard.jsp");
           // RequestDispatcher rd = request.getRequestDispatcher("WelcomeUser.jsp");
            rd.forward(request, response);
        } else {
            //RequestDispatcher rd = request.getRequestDispatcher("studentlogin.jsp");
            //rd.include(request, response);
          System.out.println("invalid");
        }

    }

}
