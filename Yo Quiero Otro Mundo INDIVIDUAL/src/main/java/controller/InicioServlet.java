package controller;

import model.Conexion;
import model.Usuario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(name = "Inicio", value = "/Inicio")
public class InicioServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        getServletContext().getRequestDispatcher("/views/inicio.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("username");
        String clave = request.getParameter("password");

        HttpSession sesion = request.getSession(true);
        Usuario u = new Usuario();
        u.setNombre("Victor");
        u.setTipo("Cliente");
        u.setRun(123456789);
        sesion.setAttribute("usuario",u);

        if(usuario.equalsIgnoreCase("admin") && clave.equals("1234")){
            getServletContext().getRequestDispatcher("/views/home.jsp").forward(request, response);

            try{
                Connection cn = Conexion.getConn();

                if(cn.isValid(1)){
                    System.out.println("conexion valida");
                }
            }catch(SQLException e){
                e.printStackTrace();
            }


        }else{
            getServletContext().getRequestDispatcher("/views/inicio.jsp").forward(request, response);
        }

    }
}
