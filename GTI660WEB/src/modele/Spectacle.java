package modele;
import java.util.ArrayList;


public class Spectacle {
	private int id;
	private String nom;
	private String image;
	private int duree;
	private String description;
	
	private ArrayList representations = new ArrayList();
	private int nbRepresentations;
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getDuree() {
		return duree;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNbRepresentations() {
		return nbRepresentations;
	}
	

}
