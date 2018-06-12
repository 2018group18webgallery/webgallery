package tool;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	public static String encryption(String str)  {
		byte[] defaultBytes = str.getBytes();
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.reset();

			byte[] digest = md.digest();
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < digest.length; i++) {
				String hex = Integer.toHexString(0xFF & digest[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			String result = hexString + "";
			return result;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) throws IOException {
		System.out.println(encryption("tphuong"));
	}
}
