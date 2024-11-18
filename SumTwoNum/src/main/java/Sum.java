import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Sum extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();

        
        String num1 = req.getParameter("num1");
        String num2 = req.getParameter("num2");

        try {
          
            int number1 = Integer.parseInt(num1);
            int number2 = Integer.parseInt(num2);
            
            
            int sum = number1 + number2;
            
            
            pw.println("<h1>Sum: " + sum + "</h1>");
        } catch (NumberFormatException e) {
            pw.println("<h1>Invalid input. Please provide valid numbers.</h1>");
        }
    }
}
