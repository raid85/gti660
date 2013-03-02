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

	public boolean login(String Courriel, String Password) {
		return clientDAO.login(Courriel, Password);
		
	}
	
	public boolean createClient (String nomFamille, String prenom, String Courriel ,String Password) {
		clientDAO.createClient(nomFamille, prenom, Courriel, Password);
//		System.out.println(beanClient.getNomFamille());

		//TODO Change to false when done
		return true ;
	
		
	}
	
	public String[] getClientInfos(){
		return clientDAO.client2Array() ;
	}
	
	

	public boolean modifyClient(String nom, String prenom,
			String emailsignup, String tel, String adresse,
			String ville, String prov, String cc,
			String anniv, String passwordsignup) {
		return clientDAO.updateClient(nom,prenom,emailsignup,tel,adresse,ville,prov,cc,anniv,passwordsignup);
		
	}
	

	

		
}