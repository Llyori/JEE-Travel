package Servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Beans.Photo;
import Beans.ReservationE;
import Beans.User;
import Beans.Voiture;
import Models.TraitementReservation;
import Models.TraitementVoitures;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Reservation extends HttpServlet {
	
	TraitementReservation traitementReservation = new TraitementReservation();
	TraitementVoitures traitementVoitures = new TraitementVoitures();
	public static List<Photo> listphoto = new ArrayList<Photo>();
	public static Voiture voiture = new Voiture();
	public static List<ReservationE> reservations = new ArrayList<ReservationE>();
	public static ReservationE reservation = new ReservationE();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		if(request.getParameter("idVoiture") != null) {
			int idVoiture = Integer.parseInt(request.getParameter("idVoiture"));
			voiture = traitementVoitures.FindVoitureById(idVoiture);
			listphoto = traitementVoitures.FindPhotoVoituresByIdVoiture(idVoiture);
			this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/formulaire.jsp").forward(request, response);
		}
		else if(request.getParameter("idUser") != null) {
			reservations = traitementReservation.Reservations();
			this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/BonsReservation.jsp").forward(request, response);
		}else if(request.getParameter("idreservation") != null) {
			reservation = traitementReservation.FindReservationById(Integer.parseInt(request.getParameter("idreservation")));
			this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/BonReservationDetail.jsp").forward(request, response);
		}else if(request.getParameter("idpan") != null) {
			this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/FormulaireMultiple.jsp").forward(request, response);
		}
		else
			this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/Reservation.jsp").forward(request, response);
	}
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd:hh:mm:ss");
		String currentDateTime = dateFormatter.format(new Date());
		
		System.out.println("La date est: "+currentDateTime);
		
		User user = LogIn.user;
		Voiture voiture2 = voiture;
		String dateDebutLocation = request.getParameter("datedebut");
		String dateFinLocation = request.getParameter("datefin");
		int nbreEx = Integer.parseInt(request.getParameter("nbreEx"));
		ReservationE e = new ReservationE(user, voiture2,currentDateTime, dateDebutLocation, dateFinLocation,"en attente", nbreEx);
		if(traitementReservation.NouvelleReservation(e)) {
			String text = "Reussi ! Votre demande a été envoyé avec succès.";
			request.setAttribute("message", text);
		}
		else {
			String text = "Désolé, les paramètres pour ce véhicules ont été changé, veillez lire la description tout en bas.";
			request.setAttribute("message", text);
		}
		this.getServletContext().getRequestDispatcher("/Dashboard/Reservation/formulaire.jsp").forward(request, response);
	}

}
