package controleur;


import java.math.BigDecimal;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modele.Client;

//import modele.PaiementDAO;
import modele.DelegateSpectacles;
import modele.LignePanier;

import modele.Representation;
import modele.Panier;

/**
 * Cette classe est le sous-controleur qui effectue le traitement selon les paramètres reçus
 * dans la requête HTTP
 *
 * @author Riad Chebli
 * @version 2.0
 */

public class Controleur {

	private static final long serialVersionUID = 1391688820894808468L;
	

	public String executerTraitement(HttpServletRequest request, HttpServletResponse response){		

		try {
		if (request.getParameterMap().size() < 1){
				
				
				return "Home.jsp";
			}
			
		else if (request.getParameter("action").equals("afficherSpectacle")){

			try {
				request.setAttribute("spectacle", DelegateSpectacles.getRepresentations(Integer.parseInt(request.getParameter("spectacleid"))));
			}
			catch (NumberFormatException e){
				return "erreur.jsp";
			}
			catch (ClassCastException e){
				e.printStackTrace();
				return "erreur.jsp";
			}
			return "representations.jsp";
		}
		
	

	
		
		else if (request.getParameter("action").equals("preparePaiement")){

			Client monClient = new Client();
			monClient.setAddrClient(request.getParameter("AddrClient"));			
			monClient.setCCClient(request.getParameter("CCClient"));
			monClient.setCourrielClient(request.getParameter("CourrielClient"));
			monClient.setExpMClient(request.getParameter("ExpMClient"));
			monClient.setExpAClient(request.getParameter("ExpAClient"));
			monClient.setNomClient(request.getParameter("NomClient"));
			monClient.setPaysClient(request.getParameter("PaysClient"));
			monClient.setPreClient(request.getParameter("PreClient"));
			monClient.setProvinceClient(request.getParameter("ProvinceClient"));
			monClient.setVilleClient(request.getParameter("VilleClient"));
			monClient.setcS(request.getParameter("SecClient"));
			request.setAttribute("Client", monClient);

			//On remplit l'objet InformationsPaiementTO requis par le service de transactions			
//			ipC.setFirst_name(monClient.getPreClient());
//			ipC.setLast_name(monClient.getNomClient());
//			try{
//				ipC.setAmount(BigDecimal.valueOf(monPanier.getTotal()));			
//				ipC.setCard_number(CarteCreditClient);
//				ipC.setMonth(Integer.valueOf(monClient.getExpMClient()));
//				ipC.setYear(Integer.valueOf(monClient.getExpAClient()));
//				ipC.setSecurity_code(Integer.valueOf(monClient.getcS()));
//				ipC.setApi_key(apiKey);
//				//En attendant...
//				ipC.setOrder_id((long) ((Math.random()*100)));			
//				ipC.setStore_id(storeID);
//			}catch (NumberFormatException e){
//				System.out.println ("Internal Parsing/Casting exception");
//				e.printStackTrace();
//			}
//
//
//			ReponseSystemePaiementTO rspPre = new ReponseSystemePaiementTO ();
//			rspPre = payDAO.effectuerPreauthorisation(ipC);			
//		
//			request.getSession().setAttribute("trID", rspPre.getTransactionId());
//			request.getSession().setAttribute("cdR",rspPre.getCode());
			
			


			return "confPaie.jsp";
		}
		

		
		
		else if (request.getParameter("action").equals("home")){

			request.setAttribute("spectacles", DelegateSpectacles.getSpectacles());
			return "spectacles.jsp";
		}


		else
			return "erreur.jsp";
	}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			return "erreur.jsp";
		} catch (SQLException e) {
			e.printStackTrace();
			return "erreur.jsp";
		}
	}

}