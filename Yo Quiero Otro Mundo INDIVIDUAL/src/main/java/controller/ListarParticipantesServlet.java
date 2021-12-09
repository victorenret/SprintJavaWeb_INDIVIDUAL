package controller;

import model.DAO.ParticipanteDAOImpl;
import model.Participante;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListarParticipantes", value = "/ListarParticipantes")
public class ListarParticipantesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ParticipanteDAOImpl pDAO = new ParticipanteDAOImpl();
        List<Participante> part = pDAO.readAll();
        request.setAttribute("part", part);

        getServletContext().getRequestDispatcher("/views/listarParticipantes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
