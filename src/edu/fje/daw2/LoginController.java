package edu.fje.daw2;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class LoginController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JugadorBean j = new JugadorBean(request.getParameter("nom"),
                request.getParameter("password"));

//        Properties props = new Properties();
//        FileInputStream in = new FileInputStream("/../usuaris.properties");
//        props.load(in);
//        in.close();
//
//        String usuari = props.getProperty("username");
//        String password = props.getProperty("password");
//
//        System.out.println(usuari + password);

        request.setAttribute("jugador",j);
        RequestDispatcher rd = request.getRequestDispatcher("Resultat.jsp");
        rd.forward(request,response);

    }
}



