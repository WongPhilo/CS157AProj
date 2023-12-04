import java.sql.*;
import java.util.*;

public class Connector {

    private static final String url = "jdbc:mysql://localhost:3306/cs157aproject";
    private static final String user = "root";
    private static final String password = "";

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection(url, user, password);
            Scanner sc = new Scanner(System.in);
            System.out.println("Connected to: " + url);
            System.out.println("Type in EXIT as a command to exit.");
            while (true) {
                StringBuilder sb = new StringBuilder();
                System.out.println("Command: ");
                String cmd = sc.nextLine();
                if (cmd.equalsIgnoreCase("EXIT")) {
                    break;
                }
                sb.append(cmd);
                sb.append(" ");
                System.out.println("Inputs: ");
                String q = sc.nextLine();
                sb.append(q);
                PreparedStatement statement = connect.prepareStatement(sb.toString());
                if (cmd.equalsIgnoreCase("SELECT") || cmd.equalsIgnoreCase("SHOW")) {
                    //System.out.println(statement.toString());
                    ResultSet res = statement.executeQuery();
                    ResultSetMetaData meta = res.getMetaData();
                    int cols = meta.getColumnCount();
                    Map<String, Object> row;

                    while (res.next()) {
                        row = new HashMap<String, Object>();
                        for (int i = 1; i <= cols; i++) {
                            row.put(meta.getColumnName(i), res.getObject(i));
                        }
                        System.out.println(row.toString());
                    }
                } else {
                    //System.out.println(statement.toString());
                    statement.execute();
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    public static void close(Connection conn) {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}