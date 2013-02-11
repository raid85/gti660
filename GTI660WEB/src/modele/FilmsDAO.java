package modele;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.sun.org.apache.regexp.internal.recompile;

public class FilmsDAO {
	private static String driver = "org.sqlite.JDBC";
	private static String url = "jdbc:sqlite:C:/Users/bruce/workspace/GTI525LAB2/Data/GTI525";
	private static ResultSet rs;
	
	private static ResultSet executeQuerry(String requete) throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url);
		Statement stmt = conn.createStatement();
		stmt.close();
		return stmt.executeQuery(requete);	
	}
		
	public static Film[] getFilms() throws ClassNotFoundException, SQLException{
		rs = executeQuerry("SELECT COUNT(*) FROM Spectacle");
		rs.next();
		int rowCount = (Integer) rs.getObject(1);
		rs = executeQuerry("SELECT Spectacle.ID_Spectacle, Spectacle.Nom, Spectacle.Description, Spectacle.Image FROM Spectacle");
		Film[] tableauSpectacles = new Film[rowCount];
		int i = 0;
		while ( rs.next() ) {
			Film spectacle = new Film();
//            spectacle.setId((Integer) rs.getObject(1));
//            spectacle.setNom((String) rs.getObject(2));
//            spectacle.setDescription((String) rs.getObject(3));
//            spectacle.setImage((String) rs.getObject(4));
            tableauSpectacles[i] = spectacle;
            i++;
		}
		return tableauSpectacles;
	}
	
	public static int getNbBilletsDispo(int idRepresentation) throws ClassNotFoundException, SQLException{
		rs = executeQuerry("SELECT BilletDispo FROM Representation WHERE ID_Rep = " + idRepresentation);
		rs.next();
		return (Integer) rs.getObject(1);
		
	}
	
	public static void getRep(int idRepresentation) throws ClassNotFoundException, SQLException{
		
		
	}
	
		
}
	
