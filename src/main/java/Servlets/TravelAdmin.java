package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import Beans.Etat;
import Beans.User;
import Models.TraitementUtilisateurs;
import Models.TraitementVoitures;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class TravelAdmin extends HttpServlet {
	
	TraitementUtilisateurs tu = new TraitementUtilisateurs();
	TraitementVoitures traitementVoitures = new TraitementVoitures();
	public static List<Etat> listEtat = new ArrayList<Etat>();
	public static User user = new User();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		if(request.getParameter("uuid") != null) {
			user = tu.FindUserByUuid(request.getParameter("uuid"));
			listEtat = traitementVoitures.ListeEtat();
			this.getServletContext().getRequestDispatcher("/Dashboard/TravelAdmin/Voiture.jsp").forward(request, response);
		}else {
			this.getServletContext().getRequestDispatcher("/Dashboard/TravelAdmin/Dashboard.jsp").forward(request, response);
		}
	}
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	}

}
