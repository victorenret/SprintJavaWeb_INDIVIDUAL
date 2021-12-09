package controller;

import model.DAO.ParticipanteDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EliminarParticipante", value = "/EliminarParticipante")
public class EliminarParticipanteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/views/listarParticipante.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ParticipanteDAOImpl pDAO = new ParticipanteDAOImpl();

        pDAO.deletePart(id);

        response.sendRedirect("ListarParticipantes");

    }
}
