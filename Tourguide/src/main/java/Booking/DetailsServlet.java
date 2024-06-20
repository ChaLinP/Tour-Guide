package Booking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class DetailsServlet
 */
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String tid=request.getParameter("t1");
		String bid=request.getParameter("u1");
		String ANo=request.getParameter("AdNo");
		String CNo=request.getParameter("ChNo");
		String INo=request.getParameter("InNo");
		String DNo=request.getParameter("DouNo");
		String TNo=request.getParameter("TriNo");
		String language=request.getParameter("language");
		String tot=request.getParameter("tot");
		String d1=request.getParameter("d1");
		String d2=request.getParameter("d2");
		String d3=request.getParameter("d3");
		String d4=request.getParameter("d4");
		
		//------------------RETURN TOTAL AMOUNT -------------------------------
		
		 int Accomadation = Calc.Accommodation(ANo, CNo, INo, DNo, TNo);
			
		 
		//------------------TOTAL AMOUNT DISPLAY-------------------------------
		 
		 if(Accomadation != -1) {
				int t=Calc.Accommodation(ANo, CNo, INo, DNo, TNo) + Calc.Language(language);
				String Total = "Rs"+t+"/=";
				request.setAttribute("Total",Total);
				
		//------------------STATUS OF THE INSERTION DISPLAY--------------------
				
				if(tot!=null && d1!=null && d2!=null && d3!=null && d4!=null ) {
					try {
						boolean Inserted1 =bookingDBUtil.InsertBookData(ANo, CNo, INo, DNo, TNo, language);
						boolean Inserted2 =bookingDBUtil.UpdateMakeT(tid, bid);
						if(Inserted1 == true && Inserted2 == true) {
							String msg = "Booking Successful";
							request.setAttribute("msg",msg);
							
						}else {
							String Error1 = "Booking Unsuccessful";
						    request.setAttribute("Error1",Error1);
						}
						
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				RequestDispatcher dis = request.getRequestDispatcher("booking.jsp");
				dis.forward(request, response);
			}else {
				String Error = "Maximum group size is 12 and minimum group size is 2."
						       +"Only two persons can stay in double room."
			                   +"Only three persons can stay in triple room.";
				request.setAttribute("Error",Error);
				
				RequestDispatcher dis = request.getRequestDispatcher("booking.jsp");
				dis.forward(request, response);
			}
				
		
		
		
		
	
		
				
	   }

}
