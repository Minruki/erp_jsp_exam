package erp_jsp_exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import erp_jsp_exam.dto.Department;
import erp_jsp_exam.service.DepartmentService;




@WebServlet("/DeptDelServlet")
public class DeptDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DepartmentService service;
	
    public DeptDelServlet() {
    	service = new DepartmentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int deptNo = Integer.parseInt(request.getParameter("deptNo").trim());
		Department department = new Department(deptNo);
		service.removeDepartment(department);
		response.sendRedirect("DeptListServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
