package co.yedam.app.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.command;

public class BoardCommandSelectList implements command{

   @Override
   public String excute(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
      BoardDAO dao = new BoardDAO();
      List<BoardDTO> list = dao.selectList();
      request.setAttribute("list", list);
      return "board/list.jsp";
   }

}
