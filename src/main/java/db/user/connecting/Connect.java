package db.user.connecting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
    private static final String USER = "system";
    private static final String PASSWORD = "pass";

    public static void main(String[] args) {
        Connection conn = null;

        try {
            Class.forName("oracle.jdbc.OracleDriver"); // Corrected the class name string

            conn = DriverManager.getConnection(URL, USER, PASSWORD);

            if (conn != null) {
                System.out.println("Oracle 接触に成功しました。");
            }
        } catch (ClassNotFoundException e) { // Corrected exception handling
            System.out.println("JDBC ドライバを見つからないです。");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("DBに連結されないんです。");
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.out.println("DB連結途中でエラー発生");
                e.printStackTrace();
            }
        }
    }
}
