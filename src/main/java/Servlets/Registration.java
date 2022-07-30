package Servlets;

import java.io.IOException;

import Beans.User;
import Models.TraitementUtilisateurs;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Registration extends HttpServlet {
	
	TraitementUtilisateurs tu = new TraitementUtilisateurs(); 
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		User user = new User();
		user.setNom(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
		user.setPasscode(request.getParameter("passcode"));
		user.setTelephone(request.getParameter("telephone"));
		
		if(tu.ajouterUtilisateur(user)) {
			String text = "Enregistrement Réussi, Compte créé avec Succès";
			request.setAttribute("message", text);
			this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
		}
		else {
			String text = "Echec de l\' Enregistrement Réussi";
			request.setAttribute("message", text);
			this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
		}
	}

}
