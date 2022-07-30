package Models;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import Beans.User;


public class TraitementUtilisateurs {
	
	private int i = 0;
	//ConnexionBD con = new ConnexionBD();
	
	public boolean ajouterUtilisateur(User user){
		
		i++;
		
		String uuidUser = "TVL"+i+"EL";
		user.setUuid(uuidUser);
		
		ConnexionBD.loadDatabase();
		
		try {
			PreparedStatement preparedStatement = ConnexionBD.connexion.prepareStatement("INSERT INTO Utilisateur(idrole, uuid, nom, Telephone, motpasse, statut, emailutilisateur) values(?,?,?,?,?,?,?);");
			preparedStatement.setInt(1, 1);
			preparedStatement.setString(2, user.getUuid());
			preparedStatement.setString(3, user.getNom());
			preparedStatement.setString(4, user.getTelephone());
			preparedStatement.setString(5, user.getPasscode());
			preparedStatement.setString(6, "user");
			preparedStatement.setString(7, user.getEmail());
			preparedStatement.executeUpdate();
			
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
			
	}

}
