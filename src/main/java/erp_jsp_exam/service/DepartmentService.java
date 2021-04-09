package erp_jsp_exam.service;

import java.sql.Connection;
import java.util.List;

import erp_jsp_exam.ds.JndiDS;
import erp_jsp_exam.dto.Department;
import erp_jsp_exam.impl.DepartmentDaoImpl;


public class DepartmentService {
	private Connection con = JndiDS.getConnection();
    private DepartmentDaoImpl dao = DepartmentDaoImpl.getInstance();
    
	public DepartmentService() {
		dao.setCon(con);
	}
    
	public List<Department> showDepartments(){
		return dao.selectDepartmentByAll();
	}
	
	public void addDepartment(Department department) {
		dao.insertDepartment(department);
	}
	
	public Department showDepartment(Department department) {
		return dao.selectDepartmentByNo(department);
	}
	
	public void removeDepartment(Department department) {
		dao.deleteDepartment(department.getDeptNo());
	}
	
	public void modifyDepartment(Department department) {
		dao.updateDepartment(department);
	}

	
}
