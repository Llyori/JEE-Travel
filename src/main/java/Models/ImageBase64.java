package Models;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Base64;

import jakarta.servlet.http.HttpServletRequest;


public class ImageBase64 {

	public  String Encrypter(String routes) throws IOException{
		System.out.println("Yo Salut enfin");
		String chemin = "C:/Users/Ulrich Bolan/Pictures/"+routes;
		String base64String="";
		System.out.println(chemin);
		base64String = encode(chemin);
		return base64String;
	}
	
	int i = 1;
	
	public void Decrypter(String route){
		System.out.println("Step7");
		String base64String=route;
		try(FileOutputStream stream =new FileOutputStream(new File("output"+i+".png"))){
			stream.write(decode(base64String));
			System.out.println("Decrypt OK mon gars !");
			base64String = null;
			i++;
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public void Decrypter2(HttpServletRequest request, String route, int idPhoto) throws IOException {
		String base64String=route;
		
		String chemin = request.getServletContext().getRealPath("Dashboard").replace(java.io.File.separatorChar, '/');
		File folder = new File(chemin+"/ImagesTravel");
		if(!folder.exists()) {
			folder.mkdir();
			File file = new File(chemin+"/ImagesTravel/output"+idPhoto+".png");
			if(!file.exists()) {
				try {
					file.createNewFile();
					FileOutputStream stream = new FileOutputStream(file);
					stream.write(decode(base64String));
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			byte[] photobyte = Files.readAllBytes(file.toPath());
			System.out.println(photobyte);
			file = null;
		}else {
			File file = new File(chemin+"/ImagesTravel/output"+idPhoto+".png");
			if(!file.exists()) {
				try {
					file.createNewFile();
					FileOutputStream stream = new FileOutputStream(file);
					stream.write(decode(base64String));
				}catch (Exception e) {
					e.printStackTrace();
				}
				file = null;
			}
		}
			
		
	}
	
	public String encode(String ImagePath) throws IOException{
		byte[] data = Files.readAllBytes(Paths.get(ImagePath));
		return Base64.getEncoder().encodeToString(data);
	}
	
	public byte[] decode(String base64String) {
		return Base64.getDecoder().decode(base64String);
	}
	
}


