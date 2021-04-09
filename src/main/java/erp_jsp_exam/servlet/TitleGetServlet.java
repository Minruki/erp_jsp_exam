package erp_jsp_exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import erp_jsp_exam.dto.Title;
import erp_jsp_exam.service.TitleService;

@WebServlet("/TitleGetServlet")
public class TitleGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TitleService service;
    
    public TitleGetServlet() {
        service = new TitleService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//TitleGetServlet?titleNo=1
		int no = Integer.parseInt(request.getParameter("titleNo").trim());
		Title title = service.showTitle(new Title(no));
		System.out.println(title);
		request.setAttribute("title", title);
		
		request.getRequestDispatcher("titleInfo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
