package modele;

public class DBConnection {
		
	private String sid = "GTI660" ;
	private String user = "equipe4" ;
	private String password ="8M2Fbjt6" ;
	private String Serveur = "oracle-11.logti.etsmtl.ca";
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
		String [] infosC = new String[4];
		infosC[0]="Serveur : "+this.Serveur;
		infosC[2]="User : "+this.user;
		infosC[3]="Password : "+this.password;
		infosC[1]="Session ID (SID) : "+this.sid;
		return infosC;
	}

}
