
import java.sql.*;

public class Ajedrez {
    public Ajedrez() throws SQLException {
        try (Connection cnx = Con.getConnexion();
             PreparedStatement pstm = cnx.prepareStatement("select * from personas where nombre = ?",
                     ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
        }


    }

    public static void main(String[] args) {

    }
}
