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
public class Voitures extends HttpServlet{
	
	public static List<String> listcartegrise = new ArrayList<String>();
	public static List<String> listphotoassurance = new ArrayList<String>();
	public static List<String> listphotovoiture = new ArrayList<String>();
	public static List<Integer> idetats = new ArrayList<Integer>();
	ImageBase64 imageBase64 = new ImageBase64();
	TraitementVoitures traitementVoitures = new TraitementVoitures();
	public static List<Photo> photos = new ArrayList<Photo>();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		photos = traitementVoitures.PhotoVoitures();
		for(Photo photo:photos) {
			String photoEncrypt = photo.getPhotoEncrypt();
			int id = photo.getIdPhoto();
			id = photo.getIdPhoto();
			photoEncrypt = photo.getPhotoEncrypt();
			imageBase64.Decrypter2(request, photoEncrypt, id);
			photoEncrypt = "";
			System.out.println("Fin de la boucle pour Decrypter une image");
		}
		if(request.getParameter("IdUser") != null)
			this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/Reservation.jsp").forward(request, response);
		else
			this.getServletContext().getRequestDispatcher("/Dashboard/TravelAdmin/Gallery.jsp").forward(request, response);
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String marque = request.getParameter("marque");
		String modele = request.getParameter("modele");
		String immatriculation = request.getParameter("immatriculation");
		String[] cartegrises = request.getParameterValues("photocartegrise");
		String[] photovoiture = request.getParameterValues("photovoiture");
		String[] photoassurance = request.getParameterValues("photoassurance");
		String[] etat = request.getParameterValues("etat");
		String statut = "libre";
		int nbreplace = Integer.parseInt(request.getParameter("nbreplaces"));
		int prixlocation = Integer.parseInt(request.getParameter("prixlocation"));
		int prixvente = Integer.parseInt(request.getParameter("prixvente"));
		int nbreEx = Integer.parseInt(request.getParameter("nbreEx"));
		
		for(String s:etat) {
			Integer id = Integer.parseInt(s);
			idetats.add(id);
		}
		
		for(String s:cartegrises) {
			String string = imageBase64.Encrypter(s);
			System.out.println(s);
			listcartegrise.add(string);
			string=new String();
		}
		
		for(String s:photoassurance) {
			System.out.println(s);
			String string = imageBase64.Encrypter(s);
			listphotoassurance.add(string);
			string=new String();
		}
		
		for(String s:photovoiture) {
			System.out.println(s);
			String string = imageBase64.Encrypter(s);
			listphotovoiture.add(string);
			string=new String();
		}
		
		Voiture voiture = new Voiture(photovoiture, photoassurance, cartegrises, prixlocation, prixvente, nbreplace, nbreEx, marque, modele, immatriculation, statut);
		
		for(int i:idetats)
			System.out.println(i);
		
		if(traitementVoitures.ajouterVoiture(voiture)) {
			System.out.println("OK mon gar");
			String text = "Reussi ! Voiture ajoutée avec succès.";
			request.setAttribute("message", text);
			idetats = null;
			this.getServletContext().getRequestDispatcher("/Dashboard/TravelAdmin/Voiture.jsp").forward(request, response);
		}else {
			System.out.println("Pas Bon");
			String text = "Erreur lors de cette opération, entrez les champs à nouveau !";
			request.setAttribute("message", text);
			this.getServletContext().getRequestDispatcher("/Dashboard/TravelAdmin/Voiture.jsp").forward(request, response);
		}
	}
}