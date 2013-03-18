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

			DBConnection myConnection = new DBConnection();	
			if(myConnection.isUp())request.getSession().setAttribute("dbUP", "true");			
			else request.getSession().setAttribute("dbUP", "false");			
			request.getSession().setAttribute("infosConnection",(String[])myConnection.infosConnection());			
			request.getSession().setAttribute("myConnection", (DBConnection)myConnection);
			return "search.jsp";
		}

		else if (request.getParameter("action")!=null /**r &&equest.getSession().getAttribute("dbUP")=="true"**/){		
			if(request.getParameter("action").equals("showParams")){

				String searchType = null;
				if( request.getParameter("radiobutton")!= null && request.getParameter("radiobutton").toString().equals("color")){
					searchType = "color";
				}
				else if (request.getParameter("radiobutton")!= null && request.getParameter("radiobutton").toString().equals("shape")){ 
					searchType = "shape";
					}
				request.getSession().setAttribute("searchType", searchType);	
			
				return "search.jsp";
			}
			else if(request.getParameter("action").equals("showResults")){
				request.setAttribute("searchResult", true);
				System.err.println(request.getParameter("colorValue"));
				return "search.jsp";
			}

		}

		return "search.jsp";

	} 






}

