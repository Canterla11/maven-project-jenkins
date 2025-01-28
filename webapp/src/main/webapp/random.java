import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class RandomNumberServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Random random = new Random();
        int randomNumber = random.nextInt(100) + 1;
        
        try {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Número Aleatorio</title>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; text-align: center; margin-top: 50px; background: linear-gradient(to right, #ff7e5f, #feb47b); color: white; }");
            out.println(".container { background: rgba(255, 255, 255, 0.2); padding: 20px; border-radius: 10px; display: inline-block; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3); }");
            out.println("h1 { font-size: 2.5em; margin-bottom: 10px; }");
            out.println("p { font-size: 1.5em; font-weight: bold; }");
            out.println("button { background-color: #ffffff; border: none; padding: 10px 20px; font-size: 1.2em; cursor: pointer; border-radius: 5px; margin-top: 10px; }");
            out.println("button:hover { background-color: #f0f0f0; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h1>Número Aleatorio</h1>");
            out.println("<p>" + randomNumber + "</p>");
            out.println("<form action='random' method='get'>");
            out.println("<button type='submit'>Generar Otro</button>");
            out.println("</form>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
}
