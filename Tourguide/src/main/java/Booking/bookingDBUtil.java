package Booking;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class bookingDBUtil {
	
	private static Connection conn=null;
	private static Statement stat=null;
	private static ResultSet rs=null;
	
	//---------------------READ TOUR DETAILS FROM DB--------------------------------

	public static List<Tour> getTourType(String cap)throws SQLException, ClassNotFoundException {
		
		int tourid = Integer.parseInt(cap);
		 
		ArrayList<Tour>  tour = new ArrayList<Tour>();
		
	 try {   
		 
		 conn = MySQLConnection.getConnection();
         stat = conn.createStatement();
		
//----------ERROR-----------
//**couldn't get a return value**        
//	     if(cap.equals("Kandy")) {
//		    String query = "select * from tour where TourID=1";
//		    rs = stat.executeQuery(query);
//		    while(rs.next()) {
//			    String result = rs.getString(3)+"\n\n"+rs.getString(2)+"\n"+"Tour ID :"+rs.getInt(1);
//			    System.out.println(result);
//		    }
//		 
//	     }else if(cap.equals("Dambulla")) {
//		    String query = "select * from tour where TourID=2";
//		    rs = stat.executeQuery(query);
//		    while(rs.next()) {
//			     String result = rs.getString(3)+"\n\n"+rs.getString(2)+"\n"+"Tour ID :"+rs.getInt(1);
//			     System.out.println(result);
//		    }
         
         String query = "SELECT * FROM tour WHERE TourID='"+tourid+"'";
         rs=stat.executeQuery(query);
         
         while(rs.next()) {
        	 int id=rs.getInt(1);
        	 String name=rs.getString(3);
        	 String descriptionrs=rs.getString(2);
        	 String availability=rs.getString(4);
        	 int maxV=rs.getInt(5);
        	 
        	 Tour t = new Tour(id,name,descriptionrs,availability,maxV);
        	 tour.add(t);
        	 
         }
              
	     }catch(SQLException e){
				e.printStackTrace();
	     }finally {
            if (conn != null) {
               try {
        	      conn.close();
        	      stat.close();
        	      rs.close();
              }catch (SQLException ex) {
                  ex.printStackTrace();
              }
           }
       }
	return tour;
	
	}
	
	
	//-----------------------STORE BOOK DETAILS TO THE DB---------------------------
	
	public static boolean InsertBookData(String ANo,String CNo,String INo,String DNo,String TNo,String lang) throws ClassNotFoundException {
		
		boolean Insert = false;
		int ANum = Integer.parseInt(ANo);
		int CNum = Integer.parseInt(CNo);
		int INum = Integer.parseInt(INo);
		int DNum = Integer.parseInt(DNo);
		int TNum = Integer.parseInt(TNo);
		String language = lang;
		
		try {
			
			conn = MySQLConnection.getConnection();
	        stat = conn.createStatement();
	        
	        String query = "insert into `booking` (`BookingID`, `Double`, `Triple`, `Child`, `Adult`, `Infant`, `GuideLang`) value(0,'"+DNum+"','"+TNum+"','"+CNum+"','"+ANum+"','"+INum+"','"+language+"')";
	        int rs1=stat.executeUpdate(query);
	        
	        if(rs1 == 1) 
	        	Insert=true;
	        else
	        	Insert=false;
			
		}catch(SQLException e){
			e.printStackTrace();
	     }finally {
           if (conn != null) {
              try {
       	      conn.close();
       	      stat.close();
             }catch (SQLException ex) {
                 ex.printStackTrace();
             }
          }
      }
		
		return Insert;
		
	}
	
	//---------------------READ BOOKING DETAILS FROM DB--------------------------------
	
    public static List<RecordDetails> getRecords(String id)throws SQLException, ClassNotFoundException {
		
		int touristid = Integer.parseInt(id);
		 
		ArrayList<RecordDetails>  booking = new ArrayList<RecordDetails>();
		
	    try {   
		 
		 conn = MySQLConnection.getConnection();
         stat = conn.createStatement();
		
         
         String query = "select b.GuideLang,m.TouristID,m.BookingID from booking b,make m where m.BookingID=b.BookingID and TouristID ='"+touristid+"'";
         rs=stat.executeQuery(query);
         
         while(rs.next()) {
 
        	 String lang=rs.getString(1);
        	 int tourid=rs.getInt(2);;
        	 int bookingid=rs.getInt(3);
        	 
        	 RecordDetails b = new RecordDetails(lang,tourid,bookingid);
        	 booking.add(b);
        	 
         }
              
	     }catch(SQLException e){
				e.printStackTrace();
	     }finally {
            if (conn != null) {
               try {
        	      conn.close();
        	      stat.close();
        	     
              }catch (SQLException ex) {
                  ex.printStackTrace();
              }
           }
       }
	return booking;
	
	}
	
    
    //---------------------UPDATE BOOKING DETAILS--------------------------------------
	
    public static boolean UpdateRecords(String lg,String td,String bd) throws ClassNotFoundException {
    	
    	int id=Integer.parseInt(bd);
    	boolean Update = false;
    	
    	try {   
   		 
   		 conn = MySQLConnection.getConnection();
         stat = conn.createStatement();
         
         String query="update booking set GuideLang='"+lg+"'where BookingID='"+id+"'";
         int rs1=stat.executeUpdate(query);
         
         if(rs1 == 1) 
        	    Update=true;
	        else
	        	Update=false;
			
    	
    	
        }catch(SQLException e){
			e.printStackTrace();
	     }finally {
           if (conn != null) {
              try {
       	      conn.close();
       	      stat.close();
       	      rs.close();
             }catch (SQLException ex) {
                 ex.printStackTrace();
             }
          }
        }
    	return Update;
    }
    
    //---------------------UPDATE BOOKING DETAILS--------------------------------------
	
    public static boolean DeleteRecords(String bd) throws ClassNotFoundException {
    	
    	int id=Integer.parseInt(bd);
    	boolean Delete = false;
    	
    	try {   
   		 
   		 conn = MySQLConnection.getConnection();
         stat = conn.createStatement();
         
         String query="delete from payment where BookingID='"+id+"'";
         int rs2=stat.executeUpdate(query);
         
         if(rs2 == 1) 
        	    Delete=true;
	        else
	        	Delete=false;
			
    	
    	
        }catch(SQLException e){
			e.printStackTrace();
	     }finally {
           if (conn != null) {
              try {
       	      conn.close();
       	      stat.close();
       	      rs.close();
             }catch (SQLException ex) {
                 ex.printStackTrace();
             }
          }
        }
    	return Delete;
    }
    
  //-----------------------STORE DETAILS TO THE makeT-------------------------------
    
    public static boolean UpdateMakeT(String tid,String uid ) throws ClassNotFoundException {
    	
    	boolean done=false;
    	int td=Integer.parseInt(tid);
    	int ud=Integer.parseInt(uid);
    	
    	try {
    		conn=MySQLConnection.getConnection();
    		stat = conn.createStatement();
    		
    		String query="insert into make value(0,'"+td+"','"+ud+"')";
    		int rs2 = stat.executeUpdate(query);
    		
    		if(rs2==1) 
    			done=true;
    		else
    			done=false;
    		
    	 }catch(SQLException e){
			e.printStackTrace();
	     }finally {
          if (conn != null) {
             try {
      	      conn.close();
      	      stat.close();
      	      rs.close();
            }catch (SQLException ex) {
                ex.printStackTrace();
            }
         }
       }
  
    	return done;
    }

}