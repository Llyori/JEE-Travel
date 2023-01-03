package Beans;

public class Photo {
	
	private int idPhoto;
	private Voiture idVoiture;
	private String photoEncrypt;
	
	public int getIdPhoto() {
		return idPhoto;
	}
	public void setIdPhoto(int idPhoto) {
		this.idPhoto = idPhoto;
	}
	public String getPhotoEncrypt() {
		return photoEncrypt;
	}
	public void setPhotoEncrypt(String photoEncrypt) {
		this.photoEncrypt = photoEncrypt;
	}
	
	public Photo() {
		// TODO Auto-generated constructor stub
	}
	public Voiture getIdVoiture() {
		return idVoiture;
	}
	public void setIdVoiture(Voiture idVoiture) {
		this.idVoiture = idVoiture;
	}

}
