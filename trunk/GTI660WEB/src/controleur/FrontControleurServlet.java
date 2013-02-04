package controleur;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Petit servlet d�montrant une fa�on de faire un front controller
 *
 * @author Nicolas Brousseau
 * @version 01/28/2010
 */

 public class FrontControleurServlet extends HttpServlet  {
    
	/**
	 * HttpServlet impl�mente l'interface serializable, puisqu'il est possible de s�rialiser, soit, de garder en persistance,
	 * l'�tat d'un servlet, par exemple pour conserver toutes les sessions � l'arr�t, et tout reprendre au d�marrage. Afin de
	 * faire le lien entre une classe s�rialis�e et son impl�mentation, on met le champ serialVersionUID. Ce n'est vraiment
	 * pas n�cessaire, mais sans �a, le compilateur va faire un avertissement. Alors bon, il est toujours mieux de le fixer.
	 */
	private static final long serialVersionUID = -5033259462658001604L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Redirige afin de centraliser les requ�tes
		traiter(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Redirige afin de centraliser les requ�tes
//		try{
//		long vingtMinutes=1200000;
//		request.getSession().setMaxInactiveInterval(600);
//		if(request.getSession().getCreationTime() < (request.getSession().getCreationTime()+ vingtMinutes)){
//			//request.
//		}
//		traiter(request, response);
//		}catch(IllegalStateException iSE){
//			
//		}
		traiter(request, response);
	}
	
	/**
	 * Cette m�thode re�oit toutes les requ�tes du servlet, et fais les redirections n�cessaires
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void traiter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//Redirige au contr�leur de messages. Dans un Front Controller normal, il pourrait y avoir plusieurs servlets!
		Controleur controleur = new Controleur();
		String page = controleur.executerTraitement(request, response);
		redirige(request, response, page);
	}
	
	/**
	 * Faits la redirection vers les pages demand�es par le sous contr�lleur
	 * @param request
	 * @param response
	 * @param page Le chemin et le nom de la page � afficher
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void redirige(HttpServletRequest request, HttpServletResponse response, String page) throws ServletException, IOException {
		//Redirige vers la page, fournie par le sous-contr�leur
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/"+page);
		dispatcher.forward(request, response);

	}   	
}