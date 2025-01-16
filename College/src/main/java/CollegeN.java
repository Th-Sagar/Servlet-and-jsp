

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CollegeN")
public class CollegeN extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		String n = req.getParameter("name");
		pw.print("<ul>");
		for(int i =0;i<10;i++) {
			pw.println("<li>"+ n+ "</li>");
		}
		pw.print("</ul>");
	}

}
