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
				
				ArrayList<String> resultNameArray = new ArrayList<String> () ;
				String colorHex = request.getParameter("colorValue") ;
				System.out.println(colorHex);
				Color myColor = hex2Rgb(colorHex);
				System.out.println("Red "+myColor.getRed());
				System.out.println("Green "+myColor.getGreen());
				System.out.println("Blue "+myColor.getBlue());				
				float[] rgbvalue = new float[3] ;
				rgbvalue[0] = myColor.getRed();
				rgbvalue[1]=  myColor.getGreen();
				rgbvalue[2]=  myColor.getBlue() ;
				CIELab myLab = CIELab.getInstance() ;
				float[] labvalue= myLab.fromRGB(rgbvalue);
				System.out.println("L "+labvalue[2]);
				System.out.println("A "+labvalue[1]);
				System.out.println("B "+labvalue[0]);			
				
//				resultNameArray.add("Film caca1 ");
//				resultNameArray.add("Film caca2");
//				resultNameArray.add("Film caca3");				
				request.getSession().setAttribute("searchResult", resultNameArray);
				
				request.getSession().setAttribute("moviePath", "BandesA/317219.mov");
				System.err.println();
				return "search.jsp";
			}

		}

		return "search.jsp";

	} 

	/**
	 * 
	 * @param colorStr e.g. "#FFFFFF"
	 * @return 
	 */
	public static Color hex2Rgb(String colorStr) {
	    return new Color(
	            Integer.valueOf( colorStr.substring( 1, 3 ), 16 ),
	            Integer.valueOf( colorStr.substring( 3, 5 ), 16 ),
	            Integer.valueOf( colorStr.substring( 5, 7 ), 16 ) );
	}
	
	




}

