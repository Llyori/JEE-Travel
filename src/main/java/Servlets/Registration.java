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
		
		if(request.getParameter("Cpasscode").equals(request.getParameter("passcode"))) {
			if(tu.ajouterUtilisateur(user)) {
				String text = "Reussi";
				request.setAttribute("message", text);
				this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
			}
			else {
				request.setAttribute("message", TraitementUtilisateurs.message);
				this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
			}
		}else {
			String text = "Veillez entrer les mots de passe corrects !";
			request.setAttribute("message", text);
			this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
		}
		
		
	}

}
