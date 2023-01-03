package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import Beans.Photo;
import Beans.Voiture;
import Models.ImageBase64;
import Models.TraitementVoitures;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Panier extends HttpServlet {
	
	ImageBase64 imageBase64 = new ImageBase64();
	TraitementVoitures traitementVoitures = new TraitementVoitures();
	public static Voiture voiture = new Voiture();
	public static List<Photo> listPhotoVoiture = new ArrayList<Photo>();
	public static List<Photo> listPhotoCartegrise = new ArrayList<Photo>();
	public static List<Photo> listPhotoAssurance = new ArrayList<Photo>();
	public static List<Voiture> listeVoituresRes = new ArrayList<Voiture>();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		voiture = traitementVoitures.FindVoitureById(Integer.parseInt(request.getParameter("idvoiture")));
		listPhotoVoiture = traitementVoitures.FindPhotoVoituresByIdVoiture(Integer.parseInt(request.getParameter("idvoiture")));
		listPhotoCartegrise = traitementVoitures.FindPhotoCarteGriseByIdVoiture(Integer.parseInt(request.getParameter("idvoiture")));
		listPhotoAssurance = traitementVoitures.FindPhotoAssuranceByIdVoiture(Integer.parseInt(request.getParameter("idvoiture")));
		
		for(Photo photo:listPhotoVoiture) {
			String photoEncrypt = photo.getPhotoEncrypt();
			int id = photo.getIdPhoto();
			id = photo.getIdPhoto();
			photoEncrypt = photo.getPhotoEncrypt();
			imageBase64.Decrypter3(request, photoEncrypt, "voiturepan", id);
			photoEncrypt = "";
			System.out.println("Fin de la boucle pour Decrypter une image");
		}
		
		for(Photo photo:listPhotoCartegrise) {
			String photoEncrypt = photo.getPhotoEncrypt();
			int id = photo.getIdPhoto();
			id = photo.getIdPhoto();
			photoEncrypt = photo.getPhotoEncrypt();
			imageBase64.Decrypter3(request, photoEncrypt, "cartevoiturepan", id);
			photoEncrypt = "";
			System.out.println("Fin de la boucle pour Decrypter une image");
		}
		
		for(Photo photo:listPhotoAssurance) {
			String photoEncrypt = photo.getPhotoEncrypt();
			int id = photo.getIdPhoto();
			id = photo.getIdPhoto();
			photoEncrypt = photo.getPhotoEncrypt();
			imageBase64.Decrypter3(request, photoEncrypt, "assurancevoiturepan", id);
			photoEncrypt = "";
			System.out.println("Fin de la boucle pour Decrypter une image");
		}
		
		this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/FormulaireMultiple.jsp").forward(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		voiture.setNombreReserve(Integer.parseInt(request.getParameter("nombre")));
		listeVoituresRes.add(voiture);
		for(Photo photo:Voitures.photos) {
			if(photo.getIdVoiture().getImmatriculation().equals(voiture.getImmatriculation())) {
				Voitures.photos.remove(photo);
				System.out.println("Je retire");
				break;
			}
		}
		System.out.println("Le nombre Reserve de la voiture "+voiture.getMarque()+" est "+voiture.getNombreReserve());
		this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/Reservation.jsp").forward(request, response);
	}

}
