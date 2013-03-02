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
		DelegateClient clientDelegate = new DelegateClient ();
		DBConnection myConnection = new DBConnection();


		if (request.getParameterMap().size() < 1){	


			return "index.jsp";
		}

		else if (request.getParameter("action").equals("login")){			

			if(clientDelegate.login(request.getParameter("username"),request.getParameter("password"))){	
				//On set les infos clients dans la session si ils sont chargés dans le bean par le DAOClient
				request.getSession().setAttribute("infosClient",(String[])clientDelegate.getClientInfos());
				return "search.jsp";}

			else return "erreur.jsp";
		}

		else if (request.getParameter("action").equals("register")){


			if(clientDelegate.createClient(request.getParameter("nom"),request.getParameter("prenom"),
					request.getParameter("emailsignup"),request.getParameter("passwordsignup"))){
				//On set les infos du nouveau clients dans la session si insert du DAO a réussi
				request.getSession().setAttribute("infosClient",(String[])clientDelegate.getClientInfos());
				return "profile.jsp";
			}

			else return "erreur.jsp" ;

		}
		else if (request.getParameter("action").equals("modifyProfile")){				

			clientDelegate.modifyClient(request.getParameter("nom"),
					request.getParameter("prenom"),
					request.getParameter("emailsignup"),
					request.getParameter("tel"),
					request.getParameter("adresse"),
					request.getParameter("ville"),
					request.getParameter("prov"),
					request.getParameter("cp"),
					request.getParameter("cc"),
					request.getParameter("anniv"),
					request.getParameter("passwordsignup"));
			request.getSession().setAttribute("infosClient",(String[])clientDelegate.getClientInfos());
			return "profile.jsp";

		}

		else if (request.getParameter("action").equals("signout")){	
			return "signout.jsp";
		}

		else if (request.getParameter("action").equals("config")){
			
			request.getSession().setAttribute("infosConnection",(String[])myConnection.infosConnection());
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

	}

}