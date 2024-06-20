package Booking;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class MySQLConnection {
	
	// connect way
	private static String url1 = "jdbc:mysql://localhost:3306/tourguide";
    private static String user = "root";
    private static String password = "taemin";
    
    //Connection object
    private static Connection con;
	
	public static Connection getConnection() throws ClassNotFoundException {
		
		
		try {
			
				Class.forName("com.mysql.cj.jdbc.Driver");
			
            con = DriverManager.getConnection(url1, user, password);
            
            
		}catch(SQLException e){
			System.out.println("An error occurred.Maybe user/password is invalid");
			e.printStackTrace();
        }
		
		
//		finally {
//            if (con != null) {
//                try {
//                    con.close();
//                }catch (SQLException ex) {
//                    ex.printStackTrace();
//                }
//            }
//       }
		return con;
		
	}

	



}
