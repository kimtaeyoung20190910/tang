package co.yedam.app.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ElServer
 */
@WebServlet(name = "ElServlet", urlPatterns = { "/ElServlet" })
public class ElServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElServer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("name", "request-tang");
		HttpSession session = request.getSession();
		session.setAttribute("name", "request-tang");
		//application
		this.getServletContext()
		.setAttribute("name", "tang");
		
		//list
		List<BoardDTO> list = new ArrayList<>();
		list.add(new BoardDTO(1,"김길동","첫번째"));
		list.add(new BoardDTO(2,"나길동","두번째"));
		list.add(new BoardDTO(3,"다길동","세번째"));
		request.setAttribute("boardList", list);
		
		//map
		Map<String, Object> map = new HashMap<>();
		map.put("name", "김대옹");
		map.put("age", "25");
		map.put("dept", "DB");
		request.setAttribute("userInfo",map);
		
		//dto
		request.setAttribute("board", new BoardDTO(3,"최","세번째"));
		
		
		request.getRequestDispatcher("jsp/elTest.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
