package manageopenA;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conx_A {
    public static Connection getConnexion() throws SQLException {
        String url = "jdbc:mariadb://localhost:3306/Ajedrez_A";
        String user = "root";
        String password = "root";
        return DriverManager.getConnection(url, user, password);
    }
}
