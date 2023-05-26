package manageopenB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conx_B {
    public static Connection getConnexion() throws SQLException {
        String url = "jdbc:mariadb://localhost:3306/Ajedrez_B";
        String user = "root";
        String password = "root";
        return DriverManager.getConnection(url, user, password);
    }
}
