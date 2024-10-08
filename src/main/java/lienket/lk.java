package lienket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lk
 */
@WebServlet("/lk")
public class lk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("<h1>Hello world<h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			String quantity = request.getParameter("quantity");
			int numtoP = Integer.parseInt(quantity);
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			double Price = 9.95;
			double Cost = Price * numtoP;
			response.getWriter().append("<p>Name: "+name+"<p>");
			response.getWriter().append("<p>Email: "+email+"<p>");
			response.getWriter().append("<p>Cost: "+Cost+"<p>");
		}
	
	
	

}