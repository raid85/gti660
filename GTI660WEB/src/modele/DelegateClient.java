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
	
	private Client beanClient ;
	private boolean isAuth = false;
	
	public DelegateClient (){
		this.beanClient = new Client () ;
	}

	public void setLogin(String Courriel, String Password) {
		beanClient.setCourriel(Courriel);
		beanClient.setMotDePasse(Password);
//		System.out.println(beanClient.getCourriel());
//		System.out.println(beanClient.getMotDePasse());
		
	}
	
	public boolean createClient (String nomFamille, String prenom, String Courriel ,String Password) {
		//Methode a implémenter pour créer le client a partir des parmas
		beanClient.setCourriel(Courriel);
		beanClient.setMotDePasse(Password);
		beanClient.setPrenom(prenom);
		beanClient.setNomFamille(nomFamille);
//		System.out.println(beanClient.getNomFamille());

		//STOB
		return false ;
	
		
	}
	
	public boolean checkClientLogin(){
//		TODO
		isAuth =true;
		return isAuth ;
	}
	

		
}