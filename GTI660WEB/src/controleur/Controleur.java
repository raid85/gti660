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

				//Conditions pour recherche pas image ou recherche par vidéo
				if(request.getParameter("trg")!=null && request.getParameter("trg").equals("vidS")){
				
				//On fait la requête vidéo
					myRes = fdao.getFilmsByDominantColor(colorHex);
					
				
					
					
				

				}
				else if(request.getParameter("trg")!=null && request.getParameter("trg").equals("imgS")){					
				myRes = fdao.getImagesByDominantColor(colorHex);

				}			



				

				request.getSession().setAttribute("myRes", myRes);
				request.getSession().setAttribute("moviePath", "bandeannonces/317219.mov");
				
				return "search.jsp";
			}

			else if (request.getParameter("action").equals("jouerVideo")){

				//Trouver le movie path avec le parametre video (envoyé dans la requête)
				//request.getParameter("video");
				request.getSession().setAttribute("moviePath", request.getAttribute("video"));

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
	private static Color hex2Rgb(String colorStr) {
		return new Color(
				Integer.valueOf( colorStr.substring( 1, 3 ), 16 ),
				Integer.valueOf( colorStr.substring( 3, 5 ), 16 ),
				Integer.valueOf( colorStr.substring( 5, 7 ), 16 ) );
	}

	private static float[] rgb2xyz(float[] rgbvals) {

		float var_R = ( rgbvals[0] / 255 ) ;       //R from 0 to 255
		float var_G = ( rgbvals[1] / 255 ) ;       //G from 0 to 255
		float var_B = ( rgbvals[2] / 255 ) ;       //B from 0 to 255

		if (var_R > 0.04045) var_R = (float) Math.pow(( var_R + 0.055 ) / 1.055, 2.4)  ;
		else var_R = (float) (var_R / 12.92) ;

		if ( var_G > 0.04045 ) var_G = (float) Math.pow(( var_G + 0.055 ) / 1.055, 2.4)  ;
		else var_G = (float) (var_G / 12.92) ;

		if ( var_B > 0.04045 ) var_B = (float) Math.pow(( var_B + 0.055 ) / 1.055, 2.4)  ;
		else var_B = (float) (var_B / 12.92);

		var_R = var_R * 100;
		var_G = var_G * 100;
		var_B = var_B * 100;

		//Observer. = 2°, Illuminant = D65
		float X = (float) (var_R * 0.4124 + var_G * 0.3576 + var_B * 0.1805);
		float Y = (float) (var_R * 0.2126 + var_G * 0.7152 + var_B * 0.0722);
		float Z = (float) (var_R * 0.0193 + var_G * 0.1192 + var_B * 0.9505);

		float[] xyzvalues = new float[3];		
		xyzvalues[0]=X;
		xyzvalues[1]=Y;
		xyzvalues[2]=Z;

		return xyzvalues;

	}


	private static float[] xyz2cielab (float[] xyzvals){

		float[] labvals = new float[3];

		float var_X = ( xyzvals[0]  / Float.valueOf((float) 95.047)) ; // Observer= 2°, Illuminant= D65
		float var_Y =  (xyzvals[1] /Float.valueOf((float) 100.000));
		float var_Z = (xyzvals[2]  /Float.valueOf((float) 108.883));

		if ( var_X > Float.valueOf((float)0.008856 )){ var_X = (float) Math.pow(var_X, (0.333333));}
		else {var_X = (float) ((Float.valueOf((float)7.787) * var_X ) + Float.valueOf((float) (16/116)));}

		if (var_Y > Float.valueOf((float)0.008856 )){ var_Y = (float) Math.pow(var_Y, (0.3333333));}		
		else {var_Y = (float) (( Float.valueOf((float)7.787) * var_Y ) + Float.valueOf((float)( 16/116)));}

		if ( var_Z > Float.valueOf((float)0.008856 )){ var_Z =  (float) Math.pow(var_Z, (0.333333));}
		else{ var_Z = (float) (( Float.valueOf((float)7.787) * var_Z ) + Float.valueOf((float)(16/116)));}

		float CIE_LSTAR = Math.abs(( 116 * var_Y ) - 16);
		float CIE_ASTAR = 500 * Math.abs(( var_X - var_Y ));
		float CIE_BSTAR = 200 * Math.abs(( var_Y - var_Z ));

		labvals[0]=CIE_LSTAR;
		labvals[1]=CIE_ASTAR;
		labvals[2]=CIE_BSTAR;



		return labvals;}






}

