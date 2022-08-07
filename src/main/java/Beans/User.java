package Beans;

public class User {
	
	private int id;
	private String Nom;
	private String email;
	private String passcode;
	private Role role; 
	private String uuid;
	private String telephone;
	private String statut;
	
	
	
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasscode() {
		return passcode;
	}
	public void setPasscode(String passcode) {
		this.passcode = passcode;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStatut() {
		return statut;
	}
	public void setStatut(String statut) {
		this.statut = statut;
	}
	
	

}
