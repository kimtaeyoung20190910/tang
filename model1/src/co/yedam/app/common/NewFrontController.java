package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardCommandCreate;
import co.yedam.app.board.BoardCommandCreateForm;
import co.yedam.app.board.BoardCommandSelectList;
import co.yedam.app.boardAjax.AjaxBoardList;
import co.yedam.app.boardAjax.AjaxBoardOne;
import co.yedam.app.users.command.DeleteUsers;
import co.yedam.app.users.command.GetUsers;
import co.yedam.app.users.command.GetUsersList;
import co.yedam.app.users.command.InsertUsers;
import co.yedam.app.users.command.ManageUsers;
import co.yedam.app.users.command.UpdateUsers;

@WebServlet("*.do")
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
		cont.put("/boardlist.do", new BoardCommandSelectList());
		// 등록처리
		cont.put("/boardCreate", new BoardCommandCreate());
		// 등록폼
		cont.put("/boardCreateForm", new BoardCommandCreateForm());
		// member

		// ajax
		cont.put("/ajaxBoardList.do", new AjaxBoardList());
		cont.put("/ajaxBoardOne.do", new AjaxBoardOne());
		
		cont.put("/ManageUsers.do", new ManageUsers()); // 사용자 관리페이지
		cont.put("/ajaxInsertUsers.do", new InsertUsers()); //사용자 등록
		cont.put("/ajaxUpdateUsers.do", new UpdateUsers()); //사용자 수정
		cont.put("/ajaxDeleteUsers.do", new DeleteUsers()); //사용자 삭제
		cont.put("/ajaxGetUsers.do", new GetUsers()); // 사용자 조회
		cont.put("/ajaxGetUsersList.do", new GetUsersList()); //사용자 전체조회

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 class객체 찾아주는 부분get()
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		// 로그처리
		System.out.println("path=" + path);

		// 권한체크(로그인체크)

		command commandImpl = cont.get(path); // 실행 클래스를
		String page = null;
		if (commandImpl != null) {
			page = commandImpl.excute(request, response);
			if (page != null && page.isEmpty()) {
				if (page.startsWith("redirect:")) { // 특정단어로 시작하는 "redirect"
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			}
		} else {
			response.getWriter().append("잘못된 요청입니다.");
		}
	}

}
