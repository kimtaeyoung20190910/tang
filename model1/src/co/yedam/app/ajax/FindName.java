package co.yedam.app.ajax;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindName
 */
@WebServlet("/FindName.do")
public class FindName extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html; charset=UTF-8");
		//파라미터 받기
		String no = request.getParameter("no");
		//이름을 찾기
		String name="";
		//1.홍길동 2.김기자
		if(Integer.parseInt(no)==1) {
			name="홍길동";
		}
		else {
			name="김기자";
		}
		//이름출력
		response.getWriter().append(name);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
