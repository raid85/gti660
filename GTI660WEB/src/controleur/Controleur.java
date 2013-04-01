package controleur;


import java.awt.Color;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;

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
				if( request.getParameter("select_dd")!= null && request.getParameter("select_dd").toString().equals("6")){
					searchType = "color";
				}
				else if (request.getParameter("select_dd")!= null && request.getParameter("select_dd").toString().equals("11")){ 
					searchType = "shape";
				}
				request.getSession().setAttribute("searchType", searchType);	

				return "search.jsp";
			}
			else if(request.getParameter("action").equals("showResults")){
				FilmsDAO fdao = new FilmsDAO ((String)request.getSession().getAttribute("xmlPath"),(DBConnection)request.getSession().getAttribute("myConnection"));			
				ArrayList<String> myRes = new ArrayList<String> () ;

				//On saisi la valeur du colorPicker
				String colorHex = request.getParameter("colorValue") ;

				request.getSession().setAttribute("moviePath", null);
				request.getSession().setAttribute("imagePath", null);
				request.getSession().setAttribute("mediaType", null);

				//Conditions pour recherche pas image ou recherche par vidéo
				if(request.getParameter("trg")!=null && request.getParameter("trg").equals("vidS")){

					//On fait la requête vidéo
					myRes = fdao.getFilmsByDominantColor(colorHex);
					request.getSession().setAttribute("mediaType", "vid");		

				}
				else if(request.getParameter("trg")!=null && request.getParameter("trg").equals("imgS")){					
					
					myRes = fdao.getImagesByDominantColor(colorHex);					
					request.getSession().setAttribute("mediaType", "img");

				}			

				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				myRes.add("CACOUS");
				
				request.getSession().setAttribute("myRes", myRes);
				//				request.getSession().setAttribute("moviePath", "bandeannonces/317219.mov");

				return "search.jsp";
			}

			else if (request.getParameter("action").equals("showMedia")){

				//Trouver le movie path avec le parametre video (envoyé dans la requête)
				//request.getParameter("video");
				if(request.getSession().getAttribute("mediaType").equals("vid")){
					request.getSession().setAttribute("moviePath", request.getAttribute("path"));
					request.getSession().setAttribute("moviePath", "bandeannonces/317219.mov");
				}
				else if (request.getSession().getAttribute("mediaType").equals("img")){
					request.getSession().setAttribute("imagePath", request.getAttribute("path"));
					request.getSession().setAttribute("imagePath", "images/pics01.jpg");
				}


				return "search.jsp";

			}

		}

		return "search.jsp";

	}






}

