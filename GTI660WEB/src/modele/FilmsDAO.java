package modele;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.org.apache.regexp.internal.recompile;

import dbh.QueriesParser;

public class FilmsDAO {
	private Film beanFilm ;
	private DBConnection myConnection ;

	private QueriesParser qp ;


	public FilmsDAO (String xml, DBConnection myConn){
		this.beanFilm = new Film () ;		
		qp= new QueriesParser(xml);
		this.myConnection = myConn;
	}
	
	public ArrayList<Film> getFilmsByDominantColor(String hexColor){
		
//		myConnection.getConnect().send(qp.GetVideoByDominantColor(hexColor));
		myConnection.getConnect().send("Select * FROM (SELECT films.id, films.titre, films.poster, films.bandeAnnonce, XMLtab.Couleur, XMLtab.Pourcentage FROM films, (XMLTABLE ('$d/Mpeg7/DominantColor' passing VIDEO_XML as \"d\" COLUMNS idFilm NUMBER PATH '@filmId', Couleur VARCHAR(20) PATH 'Value/Index', Pourcentage VARCHAR(25) PATH 'Value/Percentage') AS XMLTab) WHERE Couleur like '%606060%')");
		System.out.println("asdasdasd"+myConnection.getConnect().getResult().g
		
		ArrayList connecRes = myConnection.getConnect().getResult().getArrayList();
		for(int i=0 ; i<connecRes.size();i++){
			System.out.println("FilmsDAO Results :"+connecRes.get(i));
		}
		
		
		return null;
		
		
	}

}

