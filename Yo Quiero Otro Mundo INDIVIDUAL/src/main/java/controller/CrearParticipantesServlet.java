package controller;

import model.DAO.ParticipanteDAOImpl;
import model.Participante;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "CrearParticipantes", value = "/CrearParticipantes")
public class CrearParticipantesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/views/crearParticipantes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        ParticipanteDAOImpl pDAO = new ParticipanteDAOImpl();
        Participante p = new Participante(request.getParameter("nombre"),
                request.getParameter("apellido"),
                request.getParameter("rut"),
                request.getParameter("direccion"),
                request.getParameter("telefono"));

        if (!request.getParameter("nombre").equals("") && !request.getParameter("apellido").equals("")
                && !request.getParameter("rut").equals("") && !request.getParameter("direccion").equals("")
                && !request.getParameter("telefono").equals("")) {

            pDAO.create(p);

        } else {
            System.out.println("El ingreso No debe tener espacios vacios");
        }

        //pDAO.create(p);
        request.getRequestDispatcher("/views/crearParticipantes.jsp").forward(request, response);
    }
}
