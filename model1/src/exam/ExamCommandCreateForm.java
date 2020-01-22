package exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command;

public class ExamCommandCreateForm {
	public class BoardCommandCreateForm implements command {

		@Override
		public String excute(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
			// 처리

			// 포워드 페이지

			//
			return "login/exam5.jsp";
		}

	}
}
