package modele;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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

	public ArrayList<String> getFilmsByDominantColor(String hexColor){

		myConnection.getConnect().send(qp.GetVideoByDominantColor(hexColor));		
		
		String out = myConnection.getConnect().getOutput() ;
		out= out.trim();
		System.out.println("Output : "+out);
		String[] outA = out.split(";");	
		ArrayList<String> myRes = new ArrayList<String>();
		ArrayList<String> myResPre = new ArrayList<String>();

		for(int i=0 ; i<outA.length;i++){
			if(!outA[i].isEmpty()) {
				myRes.add(outA[i]);
			}

		}	

		for(int i=0 ; i<myRes.size();i++){
			if(i%7 == 1 ||i%7 == 2||i%7 == 3||i%7 == 5 ||i%7 == 6){
				myResPre.add(myRes.get(i));
			}		


		}

	
		return myResPre;


	}
	
	public ArrayList<String> getImagesByDominantColor(String hexColor){

		myConnection.getConnect().send(qp.GetImagesByDominantColor(hexColor));		

		
		String out = myConnection.getConnect().getOutput() ;
		
		out= out.trim();
		System.out.println("Output : "+out);
		String[] outA = out.split(";");	
		
		ArrayList<String> myRes = new ArrayList<String>();
		ArrayList<String> myResPre = new ArrayList<String>();

		for(int i=0 ; i<outA.length;i++){
			if(!outA[i].isEmpty()) {
				myRes.add(outA[i]);
			}

		}	

		for(int i=0 ; i<myRes.size();i++){
			if(i%7 == 1 ||i%7 == 2||i%7 == 3||i%7 == 5 ||i%7 == 6){
				myResPre.add(myRes.get(i));
			}		


		}

	
		return myResPre;


	}

}

