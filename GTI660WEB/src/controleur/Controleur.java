package controleur;


import java.math.BigDecimal;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modele.*;




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

		if (request.getParameterMap().size() < 1 &&  request.getSession().isNew()){			 
			
			DelegateClient clientDelegate = new DelegateClient ((String)request.getSession().getAttribute("xmlPath"));	
			
			DBConnection myConnection = new DBConnection();	
			if(myConnection.isUp())request.getSession().setAttribute("dbUP", "true");			
			else request.getSession().setAttribute("dbUP", "false");
			
			request.getSession().setAttribute("delegateClient",(DelegateClient) clientDelegate);
			request.getSession().setAttribute("infosConnection",(String[])myConnection.infosConnection());
			
			request.getSession().setAttribute("myConnection", (DBConnection)myConnection);
			return "search.jsp";
		}
		
		else if (true /**request.getSession().getAttribute("dbUP")=="true"**/){		

			
		if (request.getParameter("action").equals("login")){
			
			DelegateClient myDel = (DelegateClient)(request.getSession().getAttribute("delegateClient"));
			
			if(myDel.login((String)request.getParameter("username"),(String) request.getParameter("password"),(DBConnection) request.getSession().getAttribute("myConnection"))){	
				
				
				//On set les infos clients dans la session si ils sont chargés dans le bean par le DAOClient
				request.getSession().setAttribute("infosClient",(String[])myDel.getClientInfos());
				return "search.jsp";}

			else return "erreur.jsp";
		}

//		else if (request.getParameter("action").equals("modifyProfile")){				
//			DelegateClient myDel = (DelegateClient)(request.getSession().getAttribute("delegateClient"));
//			myDel.modifyClient(request.getParameter("nom"),
//					request.getParameter("prenom"),
//					request.getParameter("emailsignup"),
//					request.getParameter("tel"),
//					request.getParameter("adresse"),
//					request.getParameter("ville"),
//					request.getParameter("prov"),
//					request.getParameter("cp"),
//					request.getParameter("cc"),
//					request.getParameter("anniv"),
//					request.getParameter("passwordsignup"));
//			request.getSession().setAttribute("delegateClient",(DelegateClient) myDel);
//			request.getSession().setAttribute("infosClient",(String[])myDel.getClientInfos());
//			return "profile.jsp"; 
//		}

		else if (request.getParameter("action").equals("signout")){	
			return "signout.jsp";
		}
		else if (request.getParameter("action").equals("peaceOut")){
			DBConnection myConn =(DBConnection) request.getSession().getAttribute("myConnection");
			try {
				myConn.getConnect().close();
				request.getSession().setAttribute("myConnection", myConn);
			} catch (SQLException e) {
				// DONOTHING
				
			}
			
			return "index.jsp";
		}

		else if (request.getParameter("action").equals("config")){
			
			
			return "config.jsp";
		}

		else if (request.getParameter("action").equals("home")){	
			return "index.jsp";
		}
		else if (request.getParameter("action").equals("profile")){	

			return "profile.jsp";
		}
		else if (request.getParameter("action").equals("search")){	
			return "search.jsp";
		}
		else return "erreur.jsp";
		} else return "config.jsp";
		

	}

}