package market;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	public static Connection getDBConnect() {
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "jsp";
		String pw = "jsp";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("디비연결됏다.");
		} catch (ClassNotFoundException e) {
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("어 안됐어~");
		} 
		
		return conn;
		
	}
	
}