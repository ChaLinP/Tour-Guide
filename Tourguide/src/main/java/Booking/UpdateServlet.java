package Booking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String language=request.getParameter("lg");
		String tourid=request.getParameter("td");
		String bookingid=request.getParameter("bd");
		
		try {
			boolean Status=bookingDBUtil.UpdateRecords(language, tourid, bookingid);
			if(Status==true) { 
				    String msg = "Recorded Successful";
				    request.setAttribute("msg",msg);
					
						
		    }else {
					String Error1 = "Recorded Unsuccessful";
				    request.setAttribute("Error1",Error1);
				}
			
			RequestDispatcher dis = request.getRequestDispatcher("Activity.jsp");
			dis.forward(request, response);
			   
			
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
