package erp_jsp_exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import erp_jsp_exam.dto.Title;
import erp_jsp_exam.service.TitleService;

@WebServlet("/TitleDelServlet")
public class TitleDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;
	
    public TitleDelServlet() {
    	service = new TitleService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int no = Integer.parseInt(request.getParameter("no").trim());
		Title title = new Title(no);
		service.removeTitle(title);
		response.sendRedirect("TitleListServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
