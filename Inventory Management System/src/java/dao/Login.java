package dao;
import java.sql.*;
import java.util.*;
import com.model.LoginData;

public class Login {
    public Connection con;
    public ResultSet pwordrs,roles;
    public List list;
    public PreparedStatement ps;

    public Login() {
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con=DriverManager.getConnection("jdbc:derby://localhost:1527/InventoryManagementSystem","bikram","0000"); //enter database credentials accordingly
            System.out.println("Connection Established");
        }
        catch(Exception e)
        {
            System.out.println("Connection Failed: "+e);
        }
    }        
    
    public int pwordCheck(LoginData ld1)
    {
        int retval=0;
        try
        {
            String query = "SELECT PASSWORD FROM ACCOUNT_DATA WHERE EMAILID=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,ld1.getEmail());
            pwordrs = ps.executeQuery();
            pwordrs.next();
            if(pwordrs.getString("PASSWORD").equals(ld1.getPword()))
            {
                retval=1;
            }
        }
        catch(Exception e4)
        {
            System.out.println("Error in checking password: "+e4);
        }
        return retval;
    }
}