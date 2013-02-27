package controleur;


import java.math.BigDecimal;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modele.*;




/**
 * Cette classe est le sous-controleur qui effectue le traitement selon les param�tres re�us
 * dans la requ�te HTTP
 *
 * @author Riad Chebli
 * @version 2.0
 */

public class Controleur {

	private static final long serialVersionUID = 1391688820894808468L;
	

	public String executerTraitement(HttpServletRequest request, HttpServletResponse response){		

		if (request.getParameterMap().size() < 1){	
				
				return "index.html";
			}
			
		else if (request.getParameter("action").equals("login")){

			DelegateClient myDelegate = new DelegateClient ();
			myDelegate.setLogin (request.getParameter("username"),request.getParameter("password"));
			
			return "representations.jsp";
		}
		
	

	
		
		else if (request.getParameter("action").equals("preparePaiement")){

			Client monClient = new Client();
//			MONCLIENT.SETADDRCLIENT(REQUEST.GETPARAMETER("ADDRCLIENT"));			
//			MONCLIENT.SETCCCLIENT(REQUEST.GETPARAMETER("CCCLIENT"));
//			MONCLIENT.SETCOURRIELCLIENT(REQUEST.GETPARAMETER("COURRIELCLIENT"));
//			MONCLIENT.SETEXPMCLIENT(REQUEST.GETPARAMETER("EXPMCLIENT"));
//			MONCLIENT.SETEXPACLIENT(REQUEST.GETPARAMETER("EXPACLIENT"));
//			MONCLIENT.SETNOMCLIENT(REQUEST.GETPARAMETER("NOMCLIENT"));
//			MONCLIENT.SETPAYSCLIENT(REQUEST.GETPARAMETER("PAYSCLIENT"));
//			MONCLIENT.SETPRECLIENT(REQUEST.GETPARAMETER("PRECLIENT"));
//			MONCLIENT.SETPROVINCECLIENT(REQUEST.GETPARAMETER("PROVINCECLIENT"));
//			MONCLIENT.SETVILLECLIENT(REQUEST.GETPARAMETER("VILLECLIENT"));
//			MONCLIENT.SETCS(REQUEST.GETPARAMETER("SECCLIENT"));
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

	
			return "Home.jsp";
		}


		else
			return "erreur.jsp";
	}

}