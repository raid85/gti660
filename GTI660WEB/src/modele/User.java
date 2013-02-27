package modele;

public class User {
	
	private String login ;
	private String pass ;
	private boolean isConnected ;
	public void setLogin(String login) {
		this.login = login;
	}
	public String getLogin() {
		return login;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPass() {
		return pass;
	}
	public void setConnected(boolean isConnected) {
		this.isConnected = isConnected;
	}
	public boolean isConnected() {
		return isConnected;
	}

}
