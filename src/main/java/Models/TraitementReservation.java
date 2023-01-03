package Models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Beans.ReservationE;

public class TraitementReservation {
	
	TraitementUtilisateurs traitementUtilisateurs = new TraitementUtilisateurs();
	TraitementVoitures traitementVoitures = new TraitementVoitures();
	
	public boolean NouvelleReservation(ReservationE e){
			ConnexionBD.loadDatabase();
			try {
				PreparedStatement preparedStatement = ConnexionBD.connexion.prepareStatement("INSERT INTO reservation(id, dateReservation, dateDebutLocation, dateFinLocation, statut) values(?,?,?,?,?,?,?);");
				preparedStatement.setInt(1, e.getIdUSer().getId());
				preparedStatement.setString(2, e.getDateReservation());
				preparedStatement.setString(3, e.getDateLocation());
				preparedStatement.setString(4, e.getDateFinLocation());
				preparedStatement.setString(5, e.getStatut());
				preparedStatement.executeUpdate();
				
				return true;
			}catch(SQLException ex) {
				ex.printStackTrace();
				return false;
			}
	}
	
	public List<ReservationE> Reservations() {
		List<ReservationE> reservations = new ArrayList<ReservationE>();
		ResultSet resultat = null;
		Statement statement = null;
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("select* from Reservation;");
			while(resultat.next()) {
				ReservationE reservation = new ReservationE();
				reservation.setIdReservation(resultat.getInt(1));
				reservation.setIdUSer(traitementUtilisateurs.FindUserById(resultat.getInt(2)));
				reservation.setDateReservation(resultat.getString(3));
				reservation.setDateLocation(resultat.getString(4));
				reservation.setDateFinLocation(resultat.getString(5));
				reservation.setStatut(resultat.getString(6));
				reservations.add(reservation);
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
		return reservations;
	}
	
	public ReservationE FindReservationById(int idreservation) {
		Statement statement = null;
		ResultSet resultat = null;
		ReservationE reservation = new ReservationE();
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("Select * from reservation where idReservation="+idreservation+";");
			while(resultat.next()) {
				reservation.setIdReservation(resultat.getInt(1));
				reservation.setIdUSer(traitementUtilisateurs.FindUserById(resultat.getInt(2)));
				reservation.setDateReservation(resultat.getString(3));
				reservation.setDateLocation(resultat.getString(4));
				reservation.setDateFinLocation(resultat.getString(5));
				reservation.setStatut(resultat.getString(6));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return reservation;
	}
}
