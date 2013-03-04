package modele;

import dbh.*;

public class DBConnection {

	public DBConnection() {
		connectionBD();
	}
	
	private String sid = "GTI660" ;
	private String user = "equipe4" ;
	private String password ="8M2Fbjt6" ;
	private String Serveur = "oracle-11.logti.etsmtl.ca";
	private String port = "1521" ;
	private RSQConnect connect = new RSQConnect();



	private boolean connectionBD() {
		String user = this.user ; 
		String passwd = this.password ; 
		String host = this.Serveur;   
		String port = this.port;    
		String dbname = this.getSid();  
		try {	
			
			connect.open(new RSQUser(user, passwd), new RSQAddress(host, port, dbname));
		
			return connect.isOpen();}
		catch (Exception e) {
			System.err.println("(RSQConnect) Cannot connect to DB because : " + e.getMessage());
	
		}return false ;
	}



	public RSQConnect getConnect() {
		return connect;
	}



	public String getPort() {
		return port;
	}



	public void setPort(String port) {
		this.port = port;
	}



	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getServeur() {
		return Serveur;
	}
	public void setServeur(String serveur) {
		Serveur = serveur;
	}
	public String [] infosConnection (){
		String [] infosC = new String[5];

		if(connect.isOpen()){infosC[0]="Status : Online" ;}					
		else if(!connect.isOpen()){infosC[0]="Status : Offline";}
		
		infosC[1]="Serveur : "+this.Serveur;
		infosC[2]="User : "+this.user;
		infosC[3]="Password : "+this.password;
		infosC[4]="Session ID (SID) : "+this.sid;
		return infosC;
	}



	public boolean isUp() {
		System.out.println("isUp"+connect.isOpen());
		return connect.isOpen();
	}

}
