package Beans;


import java.util.Arrays;

public class Voiture {
	
	private String[] photovehicule;
	private String[] assurance;
	private String[] cartegrises;;
	private int idVoiture, prixlocation, prixvente, nbreplaces, nbreEx;
	private String marque, modele, immatriculation, statut;
	
	
	public String[] getPhotovehicule() {
		return photovehicule;
	}
	public void setPhotovehicule(String[] photovehicule) {
		this.photovehicule = photovehicule;
	}
	public String[] getAssurance() {
		return assurance;
	}
	public void setAssurance(String[] assurance) {
		this.assurance = assurance;
	}
	public String[] getCartegrises() {
		return cartegrises;
	}
	public void setCartegrises(String[] cartegrises) {
		this.cartegrises = cartegrises;
	}
	public int getPrixlocation() {
		return prixlocation;
	}
	public void setPrixlocation(int prixlocation) {
		this.prixlocation = prixlocation;
	}
	public int getPrixvente() {
		return prixvente;
	}
	public void setPrixvente(int prixvente) {
		this.prixvente = prixvente;
	}
	public int getNbreplaces() {
		return nbreplaces;
	}
	public void setNbreplaces(int nbreplaces) {
		this.nbreplaces = nbreplaces;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getModele() {
		return modele;
	}
	public void setModele(String modele) {
		this.modele = modele;
	}
	public String getImmatriculation() {
		return immatriculation;
	}
	public void setImmatriculation(String immatriculation) {
		this.immatriculation = immatriculation;
	}
	public int getIdVoiture() {
		return idVoiture;
	}
	public void setIdVoiture(int idVoiture) {
		this.idVoiture = idVoiture;
	}
	
	public Voiture() {
		// TODO Auto-generated constructor stub
	}
	
	public Voiture(String[] photovehicule, String[] assurance, String[] cartegrises,
			int prixlocation, int prixvente, int nbreplaces, int nbreEx, String marque, String modele, String immatriculation, String statut) {
		super();
		this.photovehicule = photovehicule;
		this.assurance = assurance;
		this.cartegrises = cartegrises;
		this.prixlocation = prixlocation;
		this.prixvente = prixvente;
		this.nbreplaces = nbreplaces;
		this.nbreEx = nbreEx;
		this.marque = marque;
		this.modele = modele;
		this.immatriculation = immatriculation;
		this.statut = statut;
	}
	@Override
	public String toString() {
		return "Voiture [photovehicule=" + Arrays.toString(photovehicule) + ", assurance="
				+ Arrays.toString(assurance) + ", cartegrises=" + Arrays.toString(cartegrises) + ", idVoiture="
				+ idVoiture + ", prixlocation=" + prixlocation + ", prixvente=" + prixvente + ", nbreplaces="
				+ nbreplaces + ", marque=" + marque + ", modele=" + modele + ", immatriculation=" + immatriculation
				+ ", statut=" + statut + ", nbreEx=" + nbreEx + "]";
	}
	public String getStatut() {
		return statut;
	}
	public void setStatut(String statut) {
		this.statut = statut;
	}
	public int getNbreEx() {
		return nbreEx;
	}
	public void setNbreEx(int nbreEx) {
		this.nbreEx = nbreEx;
	}
	
	

}
