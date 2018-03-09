package edu.fje.daw2;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "webservlet",urlPatterns = "/login")
public class LoginController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Jugador j = new Jugador(request.getParameter("nom"),
                request.getParameter("password"));

        request.setAttribute("jugador",j);
        RequestDispatcher rd = request.getRequestDispatcher("Resultat.jsp");
        rd.forward(request,response);
    }
}
