package testBean;
import java.sql.*;
public class studentDAO {
	// DAO = Data Access Object
 public void insert(studentVO item) throws Exception {
  String number = item.getNumber();
  String name = item.getName();
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/201412384","201412384","201412384");
  PreparedStatement sql = conn.prepareStatement("insert into student values(?,?)");
  sql.setString(1,number);
  sql.setString(2,name);
  sql.executeUpdate();
 }
}