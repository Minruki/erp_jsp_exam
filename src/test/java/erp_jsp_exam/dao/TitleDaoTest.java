package erp_jsp_exam.dao;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import erp_jsp_exam.JdbcUtil;
import erp_jsp_exam.dto.Title;
import erp_jsp_exam.impl.TitleDaoImpl;




@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class TitleDaoTest {
	private static Connection con;
	private static TitleDaoImpl dao = TitleDaoImpl.getInstance();

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		con = JdbcUtil.getConnection();
		dao.setCon(con);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		con.close();
	}
	
	
	
	@After
	public void tearDown() throws Exception {
		System.out.println();
	}

	@Test
	public void test01SelectTitleByAll() {
		System.out.printf("%s()%n", "testSelectTitleByAll");
		List<Title> list = dao.selectTitleByAll();
		Assert.assertNotNull(list);
		
		list.parallelStream().forEach(System.out::println);
		
	}

	@Test
	public void test04SelectTitleByNo() {
		System.out.printf("%s()%n", "testSelectTitleByNo");
		Title title = new Title(5);
		Title searchTitle = dao.selectTitleByNo(title);
		Assert.assertNotNull(searchTitle);
		System.out.println(searchTitle);
	}
	

	@Test
	public void test02InsertTitle() {
		System.out.printf("%s()%n", "testInsertTitle");
		Title newTitle = new Title(6, "인턴");
		int res = dao.insertTitle(newTitle);
		Assert.assertEquals(1, res);
		System.out.println(dao.selectTitleByNo(newTitle));
	}

	@Test
	public void test03UpdateTitle() {
		System.out.printf("%s()%n", "testUpdateTitle");
		Title newTitle = new Title(6, "계약직");
		int res = dao.updateTitle(newTitle);
		Assert.assertEquals(1, res);
		System.out.println(dao.selectTitleByNo(newTitle));
	}

	@Test
	public void test05DeleteTitle() {
		System.out.printf("%s()%n", "testDeleteTitle");
		int res = dao.deleteTitle(6);
		Assert.assertEquals(1, res);
		dao.selectTitleByAll().stream().forEach(System.out::println);
	}

}


