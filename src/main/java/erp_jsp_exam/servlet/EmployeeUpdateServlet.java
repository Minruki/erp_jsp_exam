package erp_jsp_exam.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import erp_jsp_exam.dto.Department;
import erp_jsp_exam.dto.Employee;
import erp_jsp_exam.dto.Title;
import erp_jsp_exam.service.EmployeeService;


@WebServlet("/EmployeeUpdateServlet")
public class EmployeeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService service;

    public EmployeeUpdateServlet() {
    	service = new EmployeeService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int empNo = Integer.parseInt(request.getParameter("empNo").trim());
		String empName = request.getParameter("empName");
		Title title = new Title(Integer.parseInt(request.getParameter("title").trim()));
		Employee manager = new Employee(Integer.parseInt(request.getParameter("manager").trim()));
		int salary = Integer.parseInt(request.getParameter("salary").trim());
		Department dept = new Department(Integer.parseInt(request.getParameter("dept").trim()));
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date hireDate = null;
		try {
			hireDate = transFormat.parse(request.getParameter("hireDate"));
			
		} catch(ParseException e) {
			e.printStackTrace();
		}
				
		Employee employee = new Employee(empNo, empName, title, manager, salary, dept, hireDate);
			
		service.modifyEmployee(employee);
		response.sendRedirect("EmployeeListServlet");	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
