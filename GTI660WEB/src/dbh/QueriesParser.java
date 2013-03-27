package dbh;

import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class QueriesParser {

	String REQGetFilms, REQGetContributions, REQGetFilmsByGenre, REQGetClient, REQGetClientProfile, REQGetClientCreditInfo, REQGetFilmsClients,
	REQUpdateClientProfile, REQUpdateClientCreditInfo, REQUpdateClientCreditAmount, REQAddFilmsClients, REQAuthentification,
	REQGetImagesByDominantColor, REQGetVideoByDominantColor;

	public QueriesParser(String xmlPath) {

		try{
			
			File queries = new File(xmlPath);
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(queries);
			doc.getDocumentElement().normalize();

			//			System.out.println("Root element : " + doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("SQL");

			for (int i = 0; i < nList.getLength(); i++){

				Node iNode = nList.item(i);

				if (iNode.getNodeType() == Node.ELEMENT_NODE) {


					Element eElement = (Element) iNode;

					if(eElement.getAttribute("id").equals("GetFilms")){
						REQGetFilms=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("GetContributions")){
						REQGetContributions=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("GetFilmsByGenre")){
						REQGetFilmsByGenre=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("GetClient")){
						REQGetClient=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("GetClientProfile")){
						REQGetClientProfile=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("GetClientCreditInfo")){
						REQGetClientCreditInfo=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("GetFilmsClients")){
						REQGetFilmsClients=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("UpdateClientProfile")){
						REQUpdateClientProfile=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("UpdateClientCreditInfo")){
						REQUpdateClientCreditInfo=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("UpdateClientCreditAmount")){
						REQUpdateClientCreditAmount=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("AddFilmsClients")){
						REQAddFilmsClients=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}

					if(eElement.getAttribute("id").equals("Authentification")){
						REQAuthentification=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}
					if(eElement.getAttribute("id").equals("GetImagesByDominantColor")){
						REQGetImagesByDominantColor=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}
					if(eElement.getAttribute("id").equals("GetVideoByDominantColor")){
						REQGetVideoByDominantColor=eElement.getElementsByTagName("REQUETE").item(0).getTextContent();
					}
				}
			}

		}catch (Exception ex) {
			System.err.println("FILE NOTE FOUND");
			ex.printStackTrace();
		}


		//		System.out.println("===========================================================");
		//		System.out.println(requeteGetFilms("allo","2015","1","15","150"));
	}

	public String requeteGetFilms(String titre, String annee, String langue, String dureemin, String dureemax){

		String s=REQGetFilms;

		s=s.replace("{0}", titre);
		s=s.replace("{1}", annee);
		s=s.replace("{2}", langue);
		s=s.replace("{3}", ">= "+dureemin);
		s=s.replace("{4}", "<= "+dureemax);
		System.out.println(s);
		return s;
	}

	public String requeteGetContributions(String nomPersonne, String job){
		String s=REQGetContributions;
		s=s.replace("{0}", nomPersonne.toUpperCase());
		s=s.replace("{1}", job);
		return s;
	}

	public String requeteGetFilmsByGenre(String genre){
		String s=REQGetFilmsByGenre;
		s=s.replace("{0}", genre);
		return s;
	}

	public String requeteGetClient(String courriel){
		String s=REQGetClient;
		s=s.replace("{0}", courriel.toUpperCase());
		return s;
	}

	public String requeteGetClientProfile(String id){
		String s=REQGetClientProfile;
		s=s.replace("{0}", id);
		return s;
	}

	public String requeteGetClientCreditInfo(String clientId){
		String s=REQGetClientCreditInfo;
		s=s.replace("{0}", clientId);
		return s;
	}

	public String requeteGetFilmsClients(String clientId){
		String s=REQGetFilmsClients;
		s=s.replace("{0}", clientId);
		return s;
	}

	public String requeteUpdateClientProfile( String clientId, String nom, String prenom, String courriel, 
			String tel, String addresse, String ville,String province, String codePostal, String password){
		String s=REQUpdateClientProfile;
		s=s.replace("{0}", clientId);
		s=s.replace("{1}", nom);
		s=s.replace("{2}", prenom);
		s=s.replace("{3}", courriel);
		s=s.replace("{4}", tel);
		s=s.replace("{5}", addresse);
		s=s.replace("{6}", ville);
		s=s.replace("{7}", province);
		s=s.replace("{8}", codePostal);
		s=s.replace("{9}", password);
		return s;
	}

	public String requeteUpdateClientCreditInfo(String infocreditId, String Carte, String noCarte, String expMois, String expAnnee){
		String s=REQUpdateClientCreditInfo;
		s=s.replace("{0}", infocreditId);
		s=s.replace("{1}", Carte);
		s=s.replace("{2}", noCarte);
		s=s.replace("{3}", expMois);
		s=s.replace("{4}", expAnnee);

		return s;
	}
	
	public String requeteAddFilmsClients(String clientId, String filmId){
		String s=REQAddFilmsClients;
		s=s.replace("{0}", filmId);
		s=s.replace("{1}", clientId);

		return s;
	}

	public String requeteAuthentification(String courriel, String password){
		String s=REQAuthentification;
		s=s.replace("{0}", courriel.toUpperCase());
		s=s.replace("{1}", password.toUpperCase());
		s=s.replace("COURRIEL", "UPPER(COURRIEL)");
		s=s.replace("MOTDEPASSE", "UPPER(MOTDEPASSE)");
		return s;
	}
	
	public String GetImagesByDominantColor(String couleur){
		String s=REQGetImagesByDominantColor;
		s=s.replace("{0}",couleur.toUpperCase());
		return s;
	}
	public String GetVideoByDominantColor(String couleur){
		String s=REQGetVideoByDominantColor;
		s=s.replace("{0}",couleur.toUpperCase());
		return s;
	}
	

}
