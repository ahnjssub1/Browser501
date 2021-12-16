package lms11;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private static MemberDAO mDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	private MemberDAO() {
		
	}

	public static synchronized MemberDAO getInstance() {
		if (mDao == null) {
			mDao = new MemberDAO();
		}
		return mDao;
	}
	
	public Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "ASDF", pw = "1234";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public int join(MemberDTO mDto) {
		con = this.getConnection();
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO member").append(" VALUES (?, ?, ?, ?)");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPw());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getAddress());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, null);
		}
		return result;
	}
	
	public int login(String id, String pw) {
	con = this.getConnection();
	StringBuffer query = new StringBuffer();
	query.append("SELECT pw").append(" FROM member").append(" WHERE ID = ?");
	try {
		pstmt = con.prepareStatement(query.toString());
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			if(rs.getString("pw").equals(pw)) {
				return 1;
			} else {
				return 0;
			}
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		this.close(con, pstmt, rs);
	}
	return -1;
}
	
	
    public int userCheck(String id, String pw){
        int result = -1;
        String sql="select pwd from member where userid=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try{
            conn = getConnection(); 
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            
            rs = pstmt.executeQuery();
            if(rs.next()){
                if(rs.getString("pw").equals(pw)){                    
                    result = 1; 
                } else{
                   
                    result = 0;   
                }
            } else{
                result = -1;    
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        
        return result;   
    }

}
