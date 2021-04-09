package erp_jsp_exam.service;

import java.sql.Connection;
import java.util.List;

import erp_jsp_exam.ds.JndiDS;
import erp_jsp_exam.dto.Title;
import erp_jsp_exam.impl.TitleDaoImpl;

public class TitleService {
	
	private Connection con = JndiDS.getConnection();
   
	private TitleDaoImpl dao = TitleDaoImpl.getInstance();
    
	public TitleService() {
		dao.setCon(con);
	}
    
	public List<Title> showTitles(){
		return dao.selectTitleByAll();
	}
	
	public void addTitle(Title title) {
		dao.insertTitle(title);
	}
	
	public Title showTitle(Title title) {
		return dao.selectTitleByNo(title);
	}
	
	public void removeTitle(Title title) {
		dao.deleteTitle(title.getTitleNo());
	}
	
	public void modifyTitle(Title title) {
		dao.updateTitle(title);
	}
}
