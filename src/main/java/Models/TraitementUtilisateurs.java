package Models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Beans.Role;
import Beans.User;


public class TraitementUtilisateurs {
	
	private int i = 0;
	public static int a=0;
	public static String message;
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
			preparedStatement.setString(6, "actif");
			preparedStatement.setString(7, user.getEmail());
			preparedStatement.executeUpdate();
			
			return true;
		}catch(SQLException e) {
			message = e.getMessage();
			return false;
		}
			
	}
	
	public int Login(String Email, String password) {
		ResultSet resultat = null;
		Statement statement = null;

		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("select connexion('"+password+"','"+Email+"');");
			while(resultat.next()) {
				if(resultat.getInt(1) == 1)
					a=1;
				else if(resultat.getInt(1) == 0)
					a = 0;
			}
//			PreparedStatement prepare = ConnexionBD.connexion.prepareStatement("");
//			prepare.setString(1, password);
//			prepare.setString(2, Email);
//			prepare.execute();
			
			return a;
		}catch(SQLException e) {
			e.printStackTrace();
			return a;
		}
	}
	
	public List<Role> ListeRole() {
		List<Role> ad = new ArrayList<Role>();
		ResultSet resultat = null;
		Statement statement = null;
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("select* from Role;");
			while(resultat.next()) {
				Role ro = new Role();
				ro.setIdRole(resultat.getInt(1));
				ro.setNomRole(resultat.getString(2));
				ad.add(ro);
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
		return ad;
	}
	
	public Role FindRoleById(int idRole) {
		Role role = new Role();
		List<Role> lr = new ArrayList<Role>();
		lr = ListeRole();
		for(Role r:lr)
			if(r.getIdRole() == idRole)
				role = r;
		return role;
	}
	
	public User FindUserByEmail(String email) {
		Statement statement = null;
		ResultSet resultat = null;
		User user = new User();
		ConnexionBD.loadDatabase();
		try {
			statement = ConnexionBD.connexion.createStatement();
			resultat = statement.executeQuery("Select id, idrole, uuid, nom, telephone, statut, emailutilisateur from utilisateur where emailutilisateur = '"+ email+"';");
			while(resultat.next()) {
				user.setId(resultat.getInt(1));
				user.setRole(FindRoleById(resultat.getInt(2)));
				user.setUuid(resultat.getString(3));
				user.setNom(resultat.getString(4));
				user.setTelephone(resultat.getString(5));
				user.setStatut(resultat.getString(6));
				user.setEmail(resultat.getString(7));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

}
