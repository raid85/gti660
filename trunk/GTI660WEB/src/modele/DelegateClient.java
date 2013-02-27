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
	Client beanClient ;
	
	public DelegateClient (){
		this.beanClient = new Client () ;
	}

	public void setLogin(String Courriel, String Password) {
		beanClient.setCourriel(Courriel);
		beanClient.setMotDePasse(Password);
		
	}
	

		
}