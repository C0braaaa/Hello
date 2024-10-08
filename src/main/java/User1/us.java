package User1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/us")
public class us extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public us() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String email = request.getParameter("email");
		String fdiachi = request.getParameter("address"); 
		String fthanhpho = request.getParameter("Tpho");
		String[] hinhthuc = request.getParameterValues("hinhthuc");
		String sex = request.getParameter("sex");

		// Chuyển đổi chuỗi "male" hoặc "female" thành giá trị boolean
		boolean isMale = "male".equalsIgnoreCase(sex);

		user2 usr = new user2();
		usr.setEmail(email);
		usr.setFname(fname);
		usr.setAddress(fdiachi); 
		usr.setGHTD(hinhthuc);
		usr.setCity(fthanhpho);
		usr.setSex(isMale); 

		System.out.println("Email: " + email);
		System.out.println("Ho Ten     : " + fname);
		System.out.println("Dia chi: " + fdiachi);
		System.out.println("Thành phố: " + fthanhpho);
		System.out.println("Giới tính: " + (isMale ? "Male" : "Female"));  // In ra giới tính

		if(hinhthuc != null) {
			for (String h : hinhthuc) {
				System.out.println("Hình thức giao hàng: " + h);
			}
		}

		request.setAttribute("usr", usr);
		getServletContext().getRequestDispatcher("/confirm.jsp").forward(request, response);
	}
}
