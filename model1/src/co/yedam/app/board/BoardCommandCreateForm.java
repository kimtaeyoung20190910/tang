package co.yedam.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.command;


public class BoardCommandCreateForm implements command{

   @Override
   public String excute(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
      //처리
      
      //포워드 페이지
      
      //
      return "board/insert_form.jsp";
   }

   
   
}