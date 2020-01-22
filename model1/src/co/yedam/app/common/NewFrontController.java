package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardCommandCreate;
import co.yedam.app.board.BoardCommandCreateForm;
import co.yedam.app.board.BoardCommandSelectList;
import exam.ExamCommandCreate;
import quest.QuestCommandCreate;

@WebServlet("/")
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// hashmap <k,v>
	HashMap<String, command> cont = new HashMap<String, command>();

	public NewFrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 해쉬맵 구조를 put()에 넣어준다.
		// cont.put("/index.do", new IndexCommand()); //홈페이지 호출
		// board
		// 수정
		// 삭제
		// 상세보기
		
		// 목록
		cont.put("/boardlist", new BoardCommandSelectList());
		// 등록처리 
		cont.put("/boardCreate", new BoardCommandCreate());
		// 등록폼
		cont.put("/boardCreateForm", new BoardCommandCreateForm());
		// member

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 class객체 찾아주는 부분get()
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		// 로그처리
		System.out.println("path=" + path);
		
		//권한체크(로그인체크)
		
		command commandImpl = cont.get(path); //실행 클래스를 
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		
		if(commandImpl != null) {
			page = commandImpl.excute(request, response);
			request.getRequestDispatcher(page).forward(request, response);
		} else {
			response.getWriter().append("잘못된 요청입니다.");
		}
		
	
	}
}
