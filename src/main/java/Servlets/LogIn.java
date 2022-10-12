package Servlets;

import java.io.IOException;

import Beans.User;
import Models.TraitementUtilisateurs;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class LogIn extends HttpServlet {
	
	public static User user = new User();
	public static String Email=null;

	TraitementUtilisateurs tu = new TraitementUtilisateurs(); 

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			request.getSession().invalidate();
			request.logout();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			tu.Login(request.getParameter("email"), request.getParameter("passcode"));
		if(TraitementUtilisateurs.a == 1) {
			user = tu.FindUserByEmail(request.getParameter("email"));
			this.getServletContext().getRequestDispatcher("/Accueil.jsp").forward(request, response);
		}else {
			String text = "Erreur d\'authentification, Remplissez de nouveau les champs !";
			Email=request.getParameter("email");
			request.setAttribute("message", text);
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		
	}
	
	

}
