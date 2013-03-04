package dbh;
import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class ParametresParser {

	public static void main(String args[]) {

//		ArrayList<String> films = new ArrayList<String>();


		try{

			File parametres = new File("./Parametres.xml");
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(parametres);
			doc.getDocumentElement().normalize();

			System.out.println("Root element : " + doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("SQL");

			for (int i = 0; i < nList.getLength(); i++){

				Node iNode = nList.item(i);
				System.out.println("\nCurrent Element : " + iNode.getNodeName());

				if (iNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) iNode;

					System.out.println("sql id : " + eElement.getAttribute("id"));
					

					if(eElement.getAttribute("id").equals("GetFilms")){
						System.out.println(eElement.getElementsByTagName("TITRE").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("ANNEE").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("LANGUE").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("DUREEMIN").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("DUREEMAX").item(0).getTextContent());
					}
					
					
					if(eElement.getAttribute("id").equals("GetContributions")){
						
						System.out.println(eElement.getElementsByTagName("NOM").item(0).getTextContent());
						NodeList jList = doc.getElementsByTagName("JOB");
						for (int j=0; j< jList.getLength();j++){
							System.out.println(eElement.getElementsByTagName("JOBID").item(j).getTextContent());
							System.out.println(eElement.getElementsByTagName("JOBDESCRIPTION").item(j).getTextContent());
						}
						
					}
					
					if(eElement.getAttribute("id").equals("GetFilmsByGenre")){
						
						System.out.println(eElement.getElementsByTagName("NOM").item(0).getTextContent());
						NodeList kList = doc.getElementsByTagName("GENRE");
						for (int k=0; k< kList.getLength();k++){
							System.out.println(eElement.getElementsByTagName("ID").item(k).getTextContent());
							System.out.println(eElement.getElementsByTagName("DESCRIPTION").item(k).getTextContent());
						}
					}
					
					if(eElement.getAttribute("id").equals("Authentification")){
						System.out.println(eElement.getElementsByTagName("USERNAME").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("PASSWORD").item(0).getTextContent());
					}



				}



			}



		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

}

