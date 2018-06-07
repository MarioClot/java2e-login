package edu.fje.daw2;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;

public class LoginController extends HttpServlet {
    protected Map<String,String> accounts = LoginUtility.getUsers();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        for (Map.Entry<String,String> entry : accounts.entrySet()){
            System.out.println((entry.getKey() + "/" + entry.getValue()));
        }
//        Properties props = new Properties();
//        FileInputStream in = new FileInputStream("/../usuaris.properties");
//        props.load(in);
//        in.close();
//
//        String usuari = props.getProperty("username");
//        String password = props.getProperty("password");
//
        //System.out.println("sdfbg");
        if(LoginUtility.checkUser(request.getParameter("nom"),request.getParameter("password"))) {
            JugadorBean j = new JugadorBean(request.getParameter("nom"),
                    request.getParameter("password"));
            request.setAttribute("jugador", j);
            RequestDispatcher rd = request.getRequestDispatcher("Resultat.jsp");
            rd.forward(request, response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request,response);
        }
    }
}



