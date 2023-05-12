
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Con {
    static Connection getConnexion() throws SQLException {
        String url = "jdbc:mariadb://192.168.2.139/Ajedrez?serverTimezone=UTC";
        String user = "reto2";
        String password = "reto2";
        return DriverManager.getConnection(url, user, password);
    }
}
