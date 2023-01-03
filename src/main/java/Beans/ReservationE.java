package Beans;


public class ReservationE {
	
	private int idReservation, nbreVoiture;
	private User idUSer;
	private Voiture idVoiture;
	String dateReservation, dateLocation, dateFinLocation, statut;
	
	public ReservationE() {
		// TODO Auto-generated constructor stub
	}

	public int getIdReservation() {
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}

	public User getIdUSer() {
		return idUSer;
	}

	public void setIdUSer(User idUSer) {
		this.idUSer = idUSer;
	}

	public Voiture getIdVoiture() {
		return idVoiture;
	}

	public void setIdVoiture(Voiture idVoiture) {
		this.idVoiture = idVoiture;
	}

	public String getDateReservation() {
		return dateReservation;
	}

	public void setDateReservation(String dateReservation) {
		this.dateReservation = dateReservation;
	}

	public String getDateLocation() {
		return dateLocation;
	}

	public void setDateLocation(String dateLocation) {
		this.dateLocation = dateLocation;
	}

	public String getDateFinLocation() {
		return dateFinLocation;
	}

	public void setDateFinLocation(String dateFinLocation) {
		this.dateFinLocation = dateFinLocation;
	}

	public ReservationE(User idUSer, Voiture idVoiture, String dateReservation, String dateLocation,
			String dateFinLocation, String statut, int nbreVoiture) {
		super();
		this.idUSer = idUSer;
		this.idVoiture = idVoiture;
		this.dateReservation = dateReservation;
		this.dateLocation = dateLocation;
		this.dateFinLocation = dateFinLocation;
		this.nbreVoiture = nbreVoiture;
		this.statut = statut;
	}

	@Override
	public String toString() {
		return "ReservationE [idReservation=" + idReservation + ", nbreVoiture=" + nbreVoiture + ", idUSer=" + idUSer
				+ ", idVoiture=" + idVoiture + ", dateReservation=" + dateReservation + ", dateLocation=" + dateLocation
				+ ", dateFinLocation=" + dateFinLocation + ", statut=" + statut + "]";
	}

	public int getNbreVoiture() {
		return nbreVoiture;
	}

	public void setNbreVoiture(int nbreVoiture) {
		this.nbreVoiture = nbreVoiture;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}
	
	
	

}
