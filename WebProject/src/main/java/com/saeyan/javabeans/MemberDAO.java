package com.saeyan.javabeans;
public int duplecateID(String id) {
	int cnt = 0;
	try {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("SELECT * FROM cust_info WHERE cust_id = ?");
		pstmt.setString(1,id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			cnt=rs.getInt("cnt");
		}
	}catch(Exception e) {
		System.out.println("아이디 중복 확인 실패" + e);
	}
}
public class MemberDAO {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
