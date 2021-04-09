package erp_jsp_exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import erp_jsp_exam.dto.Employee;
import erp_jsp_exam.service.EmployeeService;



@WebServlet("/EmployeeDelServlet")
public class EmployeeDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService service;
	
    public EmployeeDelServlet() {
    	service = new EmployeeService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int empNo = Integer.parseInt(request.getParameter("empNo").trim());
		Employee employee = new Employee(empNo);
		service.removeEmployee(employee);
		response.sendRedirect("EmployeeListServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
