package Models;

import java.security.MessageDigest;
import javax.xml.bind.DatatypeConverter;

public class HashFunction {
	
	public String getHash(byte[] inputBytes, String algorithm) {
		String hashValue = "";
		try {
			MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
			messageDigest.update(inputBytes);
			byte[] digestedBytes = messageDigest.digest();
			hashValue = DatatypeConverter.printHexBinary(digestedBytes).toLowerCase();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return hashValue;
	}

}
