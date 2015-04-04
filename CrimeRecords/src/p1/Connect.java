package p1;
import java.sql.*;

public class Connect {

	public static void main(String[] args) {		
			Connect.getCon();
	}
	
	public static java.sql.Connection getCon(){
		
		Connection conn=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "crime", "crimepass");
			System.out.println("Connected to DB server Successfully.");
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
		}
		return conn;
		
	}

}
