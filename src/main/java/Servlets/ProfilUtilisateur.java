package Servlets;

import java.io.IOException;

import Beans.User;
import Models.TraitementUtilisateurs;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ProfilUtilisateur extends HttpServlet {
	 
	TraitementUtilisateurs ts = new TraitementUtilisateurs();
	public static User user = new User();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String uuid = request.getParameter("uuid");
		String uuid2 = request.getParameter("uuid2");
		if(uuid != null) {
			user = ts.FindUserByUuid(uuid);
			this.getServletContext().getRequestDispatcher("/InfoUtilisateur/ProfilUtilisateur.jsp").forward(request, response);	
		} else if(uuid2 != null) {
			user = ts.FindUserByUuid(uuid2);
			this.getServletContext().getRequestDispatcher("/InfoUtilisateur/ParametreUtilisateur.jsp").forward(request, response);	
		}
			
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	}

}
