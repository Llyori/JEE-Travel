package Servlets;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.apache.log4j.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ImageServlet extends HttpServlet {
	
	Logger logger = (Logger) Logger.getLogger(ImageServlet.class.getName());
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doGet(request,response);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id = Integer.parseInt(request.getParameter("photo"));
		String chemin = request.getServletContext().getRealPath("Dashboard").replace(java.io.File.separatorChar, '/')+""+"/ImagesTravel/output"+id+".png";
		File file = new File(chemin); 
		byte[] photo = null;
		System.out.println("Suis dans le servlet image");
		System.out.println("Le chemin de image est "+file.toPath());
		photo = Files.readAllBytes(file.toPath());
		response.setContentType("image/png");
		response.setContentLength(photo.length);
		ServletOutputStream o = response.getOutputStream();
		o.write(photo, 0, photo.length);
		o.flush();
		o.close();
		this.getServletContext().getRequestDispatcher("/Dashboard/TravelAdmin/Gallery.jsp").forward(request, response);
	}

}
