package Beans;

public class Etat{
	private int idEtat;
	private String nomEtat;
	
	public Etat() {
		// TODO Auto-generated constructor stub
	}
	
	public Etat(String nomEtat) {
		super();
		this.nomEtat = nomEtat;
	}

	public int getIdEtat() {
		return idEtat;
	}
	public void setIdEtat(int idEtat) {
		this.idEtat = idEtat;
	}
	public String getNomEtat() {
		return nomEtat;
	}
	public void setNomEtat(String nomEtat) {
		this.nomEtat = nomEtat;
	}
}