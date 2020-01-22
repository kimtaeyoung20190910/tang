package quest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;
import common.command;

public class QuestCommandCreate implements command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// 파라미터
		BoardDTO dto = new BoardDTO();
		dto.setPoster(request.getParameter("s_poster"));
		dto.setSubject(request.getParameter("s_subject"));
		dto.setContents(request.getParameter("s_contents"));

		// 등록처리
		BoardDAO dao = new BoardDAO();
		dao.insert(dto);

		// 목록으로 포워드
		return "/";
	}

}