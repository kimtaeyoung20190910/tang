package exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;
import common.command;

public class ExamCommandCreate implements command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// 파라미터
		BoardDTO dto = new BoardDTO();
		dto.setPoster(request.getParameter("exam_nm"));
		dto.setSubject(request.getParameter("quest_cnt"));
		dto.setContents(request.getParameter("exam_time"));

		// 등록처리
		BoardDAO dao = new BoardDAO();
		dao.insert(dto);

		// 목록으로 포워드
		return "/boardlist";
	}

}