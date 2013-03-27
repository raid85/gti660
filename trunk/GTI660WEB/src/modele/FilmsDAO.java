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
		
		myConnection.getConnect().send(qp.GetVideoByDominantColor(hexColor));
		
		ArrayList connecRes = myConnection.getConnect().getResult().getArrayList();
		for(int i=0 ; i<connecRes.size();i++){
			System.out.println("FilmsDAO Results :"+connecRes.get(i));
		}
		
		
		return null;
		
		
	}

}

