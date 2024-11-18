import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Hello extends HttpServlet {
	
	public void doGet(HttpServletRequest rq, HttpServletResponse rs ) throws IOException {
		
		rs.setContentType("text/html");
		String text = (String) rq.getParameter("stringInput");
		String reverseText = new StringBuilder(text).reverse().toString();
		
		PrintWriter pw= rs.getWriter();
		pw.println(reverseText);
		
	}
	

}
