package Booking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cap=request.getParameter("de");
		
		try {
			boolean Canel=bookingDBUtil.DeleteRecords(cap);
			if(Canel==true) {
				String msg = "Your booking is canceled.Money will be refunded within 2 weeks";
			    request.setAttribute("msg",msg);
				
					
	         }else {
				String Error1 = "Cancel Unsuccessful";
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
