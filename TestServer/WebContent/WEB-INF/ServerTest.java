package main;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;

public class ServerTest {
	 public static void main(String[] args) throws Exception {
	        // URL ����
	        URL url = new URL("http://httpbin.org/post");
	         
	        // URLConnection ��ü ����
	        java.net.URLConnection uc = url.openConnection();
	         
	        uc.setDoOutput(true); //doOutput �ʵ尪�� treu�� �����ؼ� ��¸��� �ٲپ���.
	         
	        //��� ��Ʈ�� ����
	        OutputStreamWriter ow = new OutputStreamWriter(uc.getOutputStream()); 
	         
	        ow.write("Name = Hong Gil Dong & Number=34"); // �����͸� �����־���.
	        ow.close();
	         
	        BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));
	         
	        String str = "";
	         
	        while( (str = in.readLine()) != null ) {
	            System.out.println(str);
	             
	        }
	            in.close();
	    }

}
