package test;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;

public class BoardDAOClient {
	public static void main(String[] args) {
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO();
		dto.setPoster("ty");
		dto.setSubject("dao test");
		dto.setContents("data test");
		dao.insert(dto);
	}
}
