package test02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class memberdao {
	private static memberdao _dao;
	
	public memberdao() {}
	
	public static memberdao getmemberdao() {
		if(_dao ==null) {
			_dao = new memberdao();
		}
		return _dao;
	}
	
	public void addmember(memberdto member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String uid = "JSP";
		String upw = "JSP";
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url, uid, upw);
			String sql = "insert into members values(?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setDate(4, member.getReg_date());
		
			
			int result = pstmt.executeUpdate();
			
	
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			try{
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
	}
}
