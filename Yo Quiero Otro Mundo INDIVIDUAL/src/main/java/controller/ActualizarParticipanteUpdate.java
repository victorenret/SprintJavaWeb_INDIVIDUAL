package controller;

import model.DAO.ParticipanteDAOImpl;
import model.Participante;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ActualizarParticipanteUpdate", value = "/ActualizarParticipanteUpdate")
public class ActualizarParticipanteUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/views/actualizarParticipante.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ParticipanteDAOImpl pDAO = new ParticipanteDAOImpl();
        Participante p = new Participante();

        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String rut = request.getParameter("rut");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");

        p.setId(id);
        p.setNombre(nombre);
        p.setApellido(apellido);
        p.setRut(rut);
        p.setDireccion(direccion);
        p.setTelefono(telefono);

        pDAO.update(p);

        response.sendRedirect("ListarParticipantes");


    }
}
