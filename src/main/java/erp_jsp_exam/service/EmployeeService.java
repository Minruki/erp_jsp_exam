package erp_jsp_exam.service;

import java.sql.Connection;
import java.util.List;

import erp_jsp_exam.ds.JndiDS;
import erp_jsp_exam.dto.Employee;
import erp_jsp_exam.impl.EmployeeDaoImpl;



public class EmployeeService {
	
	private Connection con = JndiDS.getConnection();
  	private EmployeeDaoImpl dao = EmployeeDaoImpl.getInstance();
    
	public EmployeeService() {
		dao.setCon(con);
	}
    
	public List<Employee> showEmployees(){
		return dao.selectEmployeeByAll();
	}
	
	public void addEmployee(Employee employee) {
		dao.insertEmployee(employee);
	}
	
	public Employee showEmployee(Employee employee) {
		return dao.selectEmployeeByNo(employee);
	}
	
	public void removeEmployee(Employee employee) {
		dao.deleteEmployee(employee);
	}
	
	public void modifyEmployee(Employee employee) {
		dao.updateEmployee(employee);
	}
}
