package form;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import User1.user;
import exceptions.ResourceNotFoundException;

/**
 * Servlet implementation class formsv
 */
@WebServlet("/formsv")
public class formsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public formsv() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: Thong tin da duoc luu!").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Lấy dữ liệu từ form
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("locate");
		String sex = request.getParameter("sex");
		String[] gHTD = request.getParameterValues("Type");
		String maxConnections = getServletContext().getInitParameter("maxConnections");

		// Kiểm tra dữ liệu đầu vào
		if (name == null || name.isEmpty() || email == null || email.isEmpty() || password == null || password.isEmpty() || address == null || address.isEmpty()) {
			throw new ResourceNotFoundException("No source found");
		}

		// Khởi tạo đối tượng user và set dữ liệu
		user user = new user();
		user.setEmail(email);
		user.setFname(name);
		user.setPassword(password);
		user.setAddress(address);
		user.setSex(sex);
		user.setGHTD(gHTD);

		// In ra console để debug
		System.out.println(user.getEmail());
		System.out.println(user.getFname());
		System.out.println(user.getPassword());
		System.out.println(user.getAddress());
		System.out.println(user.getSex());
		for (String delivery : user.getGHTD()) {
			System.out.println(delivery);
		}
		System.out.println("Max Connections: " + maxConnections);

		// Đẩy đối tượng user sang trang JSP
		request.setAttribute("user", user);
		getServletContext().getRequestDispatcher("/EditInfo1.jsp").forward(request, response);
	}
}
