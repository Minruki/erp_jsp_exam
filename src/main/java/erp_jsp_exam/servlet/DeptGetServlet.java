package erp_jsp_exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import erp_jsp_exam.dto.Department;
import erp_jsp_exam.service.DepartmentService;

@WebServlet("/DeptGetServlet")
public class DeptGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DepartmentService service;
    
    public DeptGetServlet() {
        service = new DepartmentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		int deptNo = Integer.parseInt(request.getParameter("deptNo").trim());
		Department department = service.showDepartment(new Department(deptNo));
		System.out.println(department);
		request.setAttribute("department", department);
		
		request.getRequestDispatcher("DeptInfo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
