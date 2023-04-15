package mv.mtb.connection;

import java.sql.*;

public class ConnectionDB {
	public static Connection getCon() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/movieticket","root","Jay@22052003");
	}
}
