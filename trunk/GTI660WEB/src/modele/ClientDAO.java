package modele;

public class ClientDAO {

	private Client beanClient ;
	private boolean isAuth = false;

	public ClientDAO (){
		this.beanClient = new Client () ;
		
	}

	public boolean login(String Courriel, String Password) {
		beanClient.setCourriel(Courriel);
		beanClient.setMotDePasse(Password);
		if(true){//TODO Faire un select dans la bd pour v�rifier les infos clients
			//TODO POPULER LE BEAN CLIENT A PARTIR DE LA BD SI LE LOGIN EST R�USSI
			
			isAuth = true;
			return isAuth;} 

		else {
			isAuth= false;
			return isAuth;}



	}

	public boolean createClient (String nomFamille, String prenom, String Courriel ,String Password) {
		//TODO Faire un insert dans la BD 
		beanClient.setCourriel(Courriel);
		beanClient.setMotDePasse(Password);
		beanClient.setPrenom(prenom);
		beanClient.setNomFamille(nomFamille);
	
		//		System.out.println(beanClient.getNomFamille());

		//STOB
		return false ;


	}
	public String [] client2Array () {
		//TODO Il faut que le bean client sois populer par un select dans la BD
		String [] arcl = new String [10] ;
		arcl[0] = "Nom de famille : "+beanClient.getNomFamille();
		arcl[1] = "Prenom : "+beanClient.getPrenom();
		arcl[2] = "Courriel : "+beanClient.getCourriel();
		arcl[3] = "Numero de telephone : "+beanClient.getTel();
		arcl[4] = "Date de naissance : "+beanClient.getAnniv();
		arcl[5] = "Adresse : "+beanClient.getAdresse();
		arcl[6] = "Ville : "+beanClient.getVille();
		arcl[7] = "Province : "+beanClient.getProvince();
		arcl[8] = "Code Postal : "+beanClient.getCodePostal();
		arcl[9] = "Forfaits au compte : "+beanClient.getForfaitID();
		return arcl;
		
		
		
	}

	public Client getBeanClient() {
		return beanClient;
	}

	public boolean isAuth() {
		return isAuth;
	}

}
