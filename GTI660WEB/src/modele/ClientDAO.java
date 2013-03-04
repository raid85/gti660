package modele;

import dbh.QueriesParser;

public class ClientDAO {

	private Client beanClient ;
	private DBConnection myConnection ;
	private boolean isAuth = false;
	private QueriesParser qp ;


	public ClientDAO (String xml){
		this.beanClient = new Client () ;
		
        qp= new QueriesParser(xml);
		
		
		
		
	}

	public boolean login(String Courriel, String Password,DBConnection myConnectionr) {
		this.myConnection = myConnectionr ;
		
	
		myConnection.getConnect().send(qp.requeteAuthentification(Courriel, Password));
		String connecRes = myConnection.getConnect().getOutput().trim();
		int test = Integer.valueOf(connecRes);
		
		
		if(test==1){//TODO Faire un select dans la bd pour vérifier les infos clients
			
			
			myConnection.getConnect().setOutput("");
			myConnection.getConnect().send(qp.requeteGetClient(Courriel));
			
		
			beanClient.setId(Integer.valueOf(myConnection.getConnect().getResult().getObjectAt(0, 0).toString())) ;
			beanClient.setNomFamille(myConnection.getConnect().getResult().getObjectAt(0, 1).toString()) ;
			beanClient.setPrenom(myConnection.getConnect().getResult().getObjectAt(0, 2).toString()) ;
			beanClient.setCourriel(myConnection.getConnect().getResult().getObjectAt(0, 3).toString()) ;
			beanClient.setTel(myConnection.getConnect().getResult().getObjectAt(0, 4).toString()) ;
			beanClient.setAnniv(myConnection.getConnect().getResult().getObjectAt(0, 5).toString().substring(0, 10)) ;
			beanClient.setAdresse(myConnection.getConnect().getResult().getObjectAt(0, 6).toString()) ;
			beanClient.setVille(myConnection.getConnect().getResult().getObjectAt(0, 7).toString()) ;
			beanClient.setProvince(myConnection.getConnect().getResult().getObjectAt(0, 8).toString()) ;
			beanClient.setCodePostal(myConnection.getConnect().getResult().getObjectAt(0, 9).toString()) ;
			beanClient.setForfaitID(myConnection.getConnect().getResult().getObjectAt(0, 10).toString()) ;
			beanClient.setMotDePasse(myConnection.getConnect().getResult().getObjectAt(0, 11).toString()) ;
			beanClient.setCreditID(Integer.valueOf(myConnection.getConnect().getResult().getObjectAt(0, 12).toString())) ;
		
			
			//TODO POPULER LE BEAN CLIENT A PARTIR DE LA BD SI LE LOGIN EST RÉUSSI
			
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

	public boolean updateClient(String nom, String prenom, String emailsignup,
			String tel, String adresse, String ville, String prov, String cc,
			String anniv, String passwordsignup, String cp) {
		
		if(myConnection.getConnect().sendUpdate(qp.requeteUpdateClientProfile( String.valueOf(beanClient.getId()), nom, prenom, emailsignup, 
				tel, adresse, ville,prov, cp, passwordsignup))){
			
			beanClient.setNomFamille(nom);
			beanClient.setPrenom(prenom);
			beanClient.setCourriel(emailsignup);
			beanClient.setTel(tel);
			beanClient.setAdresse(adresse);
			beanClient.setVille(ville);
			beanClient.setProvince(prov);		
			beanClient.setAnniv(anniv);
			beanClient.setMotDePasse(passwordsignup);
			beanClient.setCodePostal(cp);
			
			return true;
		}
		
		else return false ;
	}

}
