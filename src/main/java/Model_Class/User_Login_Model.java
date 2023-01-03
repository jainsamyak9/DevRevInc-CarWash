package Model_Class;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class User_Login_Model {
    
    
	private static int user_id;
    private static String user_name;
    private static String user_email;
    private static String time_slot;
    private static String status;
    private static String user_pass;
   
    private static String user_number;
    private static String place;


    public User_Login_Model() {
    }

    public User_Login_Model(int user_id,String user_name,String user_email,String time_slot,String status,String user_number,String user_pass,String place) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_email = user_email;
        this.time_slot = time_slot;
        this.status = status;
        this.place = place;
      
   
        this.user_number = user_number;
        this.user_pass = user_pass;
 
   
    
    }
    
    
    
    
    
    
 
	public static int validateUser(String user_email , String user_pass){
		user_id=0;
        
        try {
        	System.out.println("inside model class");
        	Class.forName("com.mysql.jdbc.Driver");
        	System.out.println("10");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/DevRev?verifyServerCertificate=false&useSSL=true","root","samyak123");
    		
            System.out.println("2");
            PreparedStatement ps = conn.prepareStatement("select user_id, user_name,user_email,time_slot,status,user_number,user_pass,place from User_cred where user_email=? and user_pass=?");
            ps.setString(1, user_email);
            ps.setString(2, user_pass);

            System.out.println("3");
            ResultSet rs = ps.executeQuery();
            System.out.println(user_email);
            System.out.println(user_pass);
            System.out.println("5");
            while (rs.next()) {
            	System.out.println("6");
            	user_id = rs.getInt(1);
            	user_name = rs.getString(2);
            	user_email = rs.getString(3);
            	time_slot = rs.getString(4);
            	status = rs.getString(5);
            
            	user_number = rs.getString(6);
            	user_pass = rs.getString(7);
            	place = rs.getString(8);
             

                
                User_Login_Model st= new User_Login_Model(user_id, user_name,user_email,time_slot,status,user_number,user_pass,place);
                

            }

        } catch (Exception e) {

System.out.println(e);
        }
    
        return user_id;
                
    }
	
	

    public static String getPlace() {
		return place;
	}

	public static int getUser_id() {
		return user_id;
	}


	public static String getUser_name() {
		return user_name;
	}
	public static String getUser_pass() {
		return user_pass;
	}


	public static String getUser_email() {
		return user_email;
	}


	public static String getTime_slot() {
		return time_slot;
	}


	public static String getStatus() {
		return status;
	}

	public static String getUser_number() {
		return user_number;
	}
 
}

