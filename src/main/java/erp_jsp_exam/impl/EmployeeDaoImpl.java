package erp_jsp_exam.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import erp_jsp_exam.dao.EmployeeDao;
import erp_jsp_exam.dto.Department;
import erp_jsp_exam.dto.Employee;
import erp_jsp_exam.dto.Title;

public class EmployeeDaoImpl implements EmployeeDao {
	private static final EmployeeDaoImpl instance = new EmployeeDaoImpl();

	public Connection con;

	public void setCon(Connection con) {
		this.con = con;
	}

	public static EmployeeDaoImpl getInstance() {

		return instance;
	}
	
	private EmployeeDaoImpl() {
	}
	
	private Employee getEmployee(ResultSet rs) throws SQLException {
		
		int empNo = 0;
		String empName = null;
		Title title = null;
		Employee manager = null;
		int salary = 0;
		Department dept = null;
		Date hiredate = null;


		try {
			empNo = rs.getInt("empno");
		} catch (Exception e) {
		}

		try {
			empName = rs.getString("empname");
		} catch (Exception e) {
		}

		try {
			title = new Title(rs.getInt("title_no"));
		} catch (Exception e) {
		}

		try {
			title.setTitleName(rs.getString("title_name"));
		} catch (Exception e) {
		}

		try {
			manager = new Employee(rs.getInt("manager_no"));
		} catch (Exception e) {
		}

		try {
			manager.setEmpName(rs.getString("manager_name"));
		} catch (Exception e) {
		}

		try {
			salary = rs.getInt("salary");
		} catch (Exception e) {
		}

		try {
			dept = new Department(rs.getInt("deptNo"));
		} catch (Exception e) {
		}

		try {
			dept.setDeptName(rs.getString("deptName"));
		} catch (Exception e) {
		}

		try {
			dept.setFloor(rs.getInt("floor"));
		} catch (Exception e) {
		}

		try {
			hiredate = new Timestamp(rs.getDate("hiredate").getTime());
		} catch (Exception e) {
		}

		
		return new Employee(empNo, empName, title, manager, salary, dept, hiredate);
	}

	@Override
	public List<Employee> selectEmployeeByAll() {
		String sql = "select empno, empname, title_no, title_name, manager_no, manager_name, salary, deptNo, deptName, floor, hiredate from vw_full_employee_test2";
		try (PreparedStatement pstmt = con.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				List<Employee> list = new ArrayList<>();
				do {
					list.add(getEmployee(rs));
				} while (rs.next());
				return list;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}



	@Override
	public Employee selectEmployeeByNo(Employee employee) {
		String sql = "select empno, empname, title as title_no, "
				+ "       manager as manager_no, salary, dept as deptNo, hiredate " + "  from employee"
				+ " where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, employee.getEmpNo());

			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return getEmployee(rs);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int insertEmployee(Employee employee) {
		String sql = "insert into employee values(?, ?, ?, ?, ?, ?, ?)";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, employee.getEmpNo());
			pstmt.setString(2, employee.getEmpName());
			pstmt.setInt(3, employee.getTitle().getTitleNo());
			pstmt.setInt(4, employee.getManager().getEmpNo());
			pstmt.setInt(5, employee.getSalary());
			pstmt.setInt(6, employee.getDept().getDeptNo());
			pstmt.setTimestamp(7, new Timestamp(employee.getHireDate().getTime()));

			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int updateEmployee(Employee employee) {
		String sql = "update employee " + "   set empname = ?, title = ?, manager=?, salary=?, dept=?, hiredate=?"
				+ " where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, employee.getEmpName());
			pstmt.setInt(2, employee.getTitle().getTitleNo());
			pstmt.setInt(3, employee.getManager().getEmpNo());
			pstmt.setInt(4, employee.getSalary());
			pstmt.setInt(5, employee.getDept().getDeptNo());
			pstmt.setTimestamp(6, new Timestamp(employee.getHireDate().getTime()));
			pstmt.setInt(7, employee.getEmpNo());
			

			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteEmployee(Employee employee) {
		String sql = "delete " + "  from employee " + " where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, employee.getEmpNo());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
