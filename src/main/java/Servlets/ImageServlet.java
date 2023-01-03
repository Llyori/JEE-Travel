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
		if(request.getParameter("photo") != null) {
			int id = Integer.parseInt(request.getParameter("photo"));
			String chemin = request.getServletContext().getRealPath("Dashboard").replace(java.io.File.separatorChar, '/')+""+"/ImagesTravel/output"+id+".png";
			File file = new File(chemin); 
			byte[] photo = null;
			photo = Files.readAllBytes(file.toPath());
			response.setContentType("image/png");
			response.setContentLength(photo.length);
			ServletOutputStream o = response.getOutputStream();
			o.write(photo, 0, photo.length);
			o.flush();
			o.close();
			//this.getServletContext().getRequestDispatcher("/Dashboard/TravelAdmin/Gallery.jsp").forward(request, response);
		}else if(request.getParameter("carte") != null) {
			int id = Integer.parseInt(request.getParameter("carte"));
			String chemin = request.getServletContext().getRealPath("Dashboard").replace(java.io.File.separatorChar, '/')+""+"/ImagesTravel/cartevoiturepan"+id+".png";
			File file = new File(chemin); 
			byte[] photo = null;
			photo = Files.readAllBytes(file.toPath());
			response.setContentType("image/png");
			response.setContentLength(photo.length);
			ServletOutputStream o = response.getOutputStream();
			o.write(photo, 0, photo.length);
			o.flush();
			o.close();
		}else if(request.getParameter("assurance") != null) {
			int id = Integer.parseInt(request.getParameter("assurance"));
			String chemin = request.getServletContext().getRealPath("Dashboard").replace(java.io.File.separatorChar, '/')+""+"/ImagesTravel/assurancevoiturepan"+id+".png";
			File file = new File(chemin); 
			byte[] photo = null;
			photo = Files.readAllBytes(file.toPath());
			response.setContentType("image/png");
			response.setContentLength(photo.length);
			ServletOutputStream o = response.getOutputStream();
			o.write(photo, 0, photo.length);
			o.flush();
			o.close();
		}else if(request.getParameter("voiture") != null) {
			int id = Integer.parseInt(request.getParameter("voiture"));
			String chemin = request.getServletContext().getRealPath("Dashboard").replace(java.io.File.separatorChar, '/')+""+"/ImagesTravel/voiturepan"+id+".png";
			File file = new File(chemin); 
			byte[] photo = null;
			photo = Files.readAllBytes(file.toPath());
			response.setContentType("image/png");
			response.setContentLength(photo.length);
			ServletOutputStream o = response.getOutputStream();
			o.write(photo, 0, photo.length);
			o.flush();
			o.close();
		}
	}

}
