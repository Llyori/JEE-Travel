package Models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Beans.Etat;
import Beans.Photo;
import Beans.Voiture;
import Servlets.Voitures;

public class TraitementVoitures {
	
	
	public boolean ajouterVoiture(Voiture voiture){
		boolean b = false;
		ConnexionBD.loadDatabase();
		
		try {
			System.out.println("Enregistrement du nouvel objet de modele "+voiture.getModele()+" et de marque "+voiture.getMarque());
			PreparedStatement preparedStatement = ConnexionBD.connexion.prepareStatement("INSERT INTO voiture(marque, modele, immatriculation, statut, prixvente, prixlocation, nombreplace, nombreexemplaire) values(?,?,?,?,?,?,?,?);");
			preparedStatement.setString(1, voiture.getMarque());
			preparedStatement.setString(2, voiture.getModele());
			preparedStatement.setString(3, voiture.getImmatriculation());
			preparedStatement.setString(4, voiture.getStatut());
			preparedStatement.setInt(5, voiture.getPrixvente());
			preparedStatement.setInt(6, voiture.getPrixlocation());
			preparedStatement.setInt(7, voiture.getNbreplaces());
			preparedStatement.setInt(8, voiture.getNbreEx());
			
			preparedStatement.executeUpdate();
			System.out.println("Fini Enregistrement");
			
			Voiture voiture2 = new Voiture();
			voiture2 = FindVoitureByModele(voiture.getModele());
			ajouterPhotoassurance(voiture.getAssurance(), voiture2.getIdVoiture());
			System.out.println("Step7 OK");
			ajouterPhotocartegrise(voiture.getCartegrises(), voiture2.getIdVoiture());
			System.out.println("Step8 OK");
			ajouterPhotoVoiture(voiture.getPhotovehicule(), voiture2.getIdVoiture());
			System.out.println("Step9 OK");
			ajouterEtat(Voitures.idetats, voiture2.getIdVoiture());
			System.out.println("JakPot !");
			b = true;
		}catch(SQLException e) {
			e.printStackTrace();
			b = false;
		}
		return b;
			
	}
	
	public void ajouterPhotoVoiture(String[] photo, int idVoiture){
		ConnexionBD.loadDatabase();
		for(String s:Voitures.listphotovoiture) {
			try {
				PreparedStatement preparedStatement = ConnexionBD.connexion.prepareStatement("INSERT INTO PhotoVoiture(idVoiture, photo) values(?,?);");
				preparedStatement.setInt(1, idVoiture);
				preparedStatement.setString(2, s);
				preparedStatement.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void ajouterPhotocartegrise(String[] photo, int idVoiture){
		System.out.println("Suis dans la boucle");
		ConnexionBD.loadDatabase();
		for(String s:Voitures.listcartegrise) {
			try {
				PreparedStatement preparedStatement = ConnexionBD.connexion.prepareStatement("INSERT INTO Photocartegrise(idVoiture, photo) values(?,?);");
				preparedStatement.setInt(1, idVoiture);
				preparedStatement.setString(2, s);
				preparedStatement.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void ajouterPhotoassurance(String[] photo, int idVoiture){
		System.out.println("Suis dans la boucle");
		ConnexionBD.loadDatabase();
		for(String s:Voitures.listphotoassurance) {
			try {
				PreparedStatement preparedStatement = ConnexionBD.connexion.prepareStatement("INSERT INTO Photoassurance(idVoiture, photo) values(?,?);");
				preparedStatement.setInt(1, idVoiture);
				preparedStatement.setString(2, s);
				preparedStatement.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public List<Voiture> ListeVoiture() {
		List<Voiture> voitures = new ArrayList<Voiture>();
		ResultSet resultat = null;
		Statement statement = null;
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("select* from Voiture;");
			while(resultat.next()) {
				Voiture voiture = new Voiture();
				voiture.setIdVoiture(resultat.getInt(1));
				voiture.setMarque(resultat.getString(2));
				voiture.setModele(resultat.getString(3));
				voiture.setImmatriculation(resultat.getString(4));
				voiture.setStatut(resultat.getString(5));
				voiture.setPrixvente(resultat.getInt(6));
				voiture.setPrixlocation(resultat.getInt(7));
				voiture.setNbreplaces(resultat.getInt(8));
				voiture.setNbreEx(resultat.getInt(9));
				
				voitures.add(voiture);
			}
		}catch(SQLException e) {
			
		}
		finally {
			try {
				if(resultat!=null)
					resultat.close();
				if(statement!=null)	
					statement.close();
				if(ConnexionBD.connexion!=null)
					ConnexionBD.connexion.close();
			}catch(SQLException ignore) {
				
			}
		}
		return voitures;
	}
	
	public Voiture FindVoitureByModele(String Modele) {
		Statement statement = null;
		ResultSet resultat = null;
		Voiture voiture = new Voiture();
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("Select idVoiture, marque, modele, immatriculation, statut, prixvente, prixlocation, nombreplace, nombreexemplaire from voiture where modele = '"+ Modele+"';");
			while(resultat.next()) {
				voiture.setIdVoiture(resultat.getInt(1));
				voiture.setMarque(resultat.getString(2));
				voiture.setModele(resultat.getString(3));
				voiture.setImmatriculation(resultat.getString(4));
				voiture.setStatut(resultat.getString(5));
				voiture.setPrixvente(resultat.getInt(6));
				voiture.setPrixlocation(resultat.getInt(7));
				voiture.setNbreplaces(resultat.getInt(8));
				voiture.setNbreEx(resultat.getInt(9));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return voiture;
	}
	
	public List<Etat> ListeEtat() {
		List<Etat> etats = new ArrayList<Etat>();
		ResultSet resultat = null;
		Statement statement = null;
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("select* from etat;");
			while(resultat.next()) {
				Etat etat = new Etat();
				etat.setIdEtat(resultat.getInt(1));
				etat.setNomEtat(resultat.getString(2));
				etats.add(etat);
			}
		}catch(SQLException e) {
			
		}
		finally {
			try {
				if(resultat!=null)
					resultat.close();
				if(statement!=null)	
					statement.close();
				if(ConnexionBD.connexion!=null)
					ConnexionBD.connexion.close();
			}catch(SQLException ignore) {
				
			}
		}
		return etats;
	}
	
	public void ajouterEtat(List<Integer> idetats, int idVoiture){
		System.out.println("Suis dans la boucle Pour ajouter les etats de taille "+idetats.size());
		ConnexionBD.loadDatabase();
		for(int i:Voitures.idetats) {
			try {
				PreparedStatement preparedStatement = ConnexionBD.connexion.prepareStatement("INSERT INTO etatVoiture(idEtat, idVoiture) values(?,?);");
				preparedStatement.setInt(1, i);
				preparedStatement.setInt(2, idVoiture);
				preparedStatement.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public List<Photo> PhotoVoitures(){
		Statement statement = null;
		ResultSet resultat = null;
		Photo photo = new Photo();
		List<Photo> photos = new ArrayList<Photo>();
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("select * from photovoiture;");
			while(resultat.next()) {
				photo.setIdPhoto(resultat.getInt(1));
				System.out.println(photo.getIdPhoto());
				photo.setIdVoiture(resultat.getInt(2));
				photo.setPhotoEncrypt(resultat.getString(3));
				System.out.println(photo.getIdVoiture());
				photos.add(photo);
				photo = new Photo();
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return photos;
	}
	

}
