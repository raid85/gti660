package modele;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Classe pour le patron Delegate
 * Utilise le DAOlocal modele.Collection
 * @author Riad Chebli
 * @version 07/15/2012
 */

public class DelegateClient {	
	
	private ClientDAO clientDAO ;
	
	
	public DelegateClient (){
		this.clientDAO = new ClientDAO () ;
	}

	public void setLogin(String Courriel, String Password) {
		clientDAO.login(Courriel, Password);
		
	}
	
	public boolean createClient (String nomFamille, String prenom, String Courriel ,String Password) {
		clientDAO.createClient(nomFamille, prenom, Courriel, Password);
//		System.out.println(beanClient.getNomFamille());

		//STOB
		return false ;
	
		
	}
	
	public String[] getClientInfos(){
		return clientDAO.client2Array() ;
	}
	
	public boolean checkClientLogin(){
		return clientDAO.isAuth() ;
	}
	

	

		
}