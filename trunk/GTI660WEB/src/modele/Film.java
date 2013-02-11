package modele;
import java.util.ArrayList;


public class Film {
	
	private int id;
	private String titre;
	public int getId() {
		return id;
	}
	public String getTitre() {
		return titre;
	}
	public String getUrlPoster() {
		return urlPoster;
	}
	public String getResumeFilm() {
		return resumeFilm;
	}
	public int getAnnee() {
		return annee;
	}
	public int getDuree() {
		return duree;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public void setUrlPoster(String urlPoster) {
		this.urlPoster = urlPoster;
	}
	public void setResumeFilm(String resumeFilm) {
		this.resumeFilm = resumeFilm;
	}
	public void setAnnee(int annee) {
		this.annee = annee;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	private String urlPoster;
	private String resumeFilm;
	private int annee ;
	private int duree ;
	
//	ID
//	TITRE
//	POSTER
//	RESUMEFILM
//	ANNEE
//	DUREE
	

}
