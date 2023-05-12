
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Con {
    static Connection getConnexion() throws SQLException {
        String url = "jdbc:mariadb://localhost:3306/Ajedrez";
        String user = "root";
        String password = "root";
        return DriverManager.getConnection(url, user, password);
    }
}
