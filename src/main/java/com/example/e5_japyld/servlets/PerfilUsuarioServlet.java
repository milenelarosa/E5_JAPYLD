package com.example.e5_japyld.servlets;

import com.example.e5_japyld.models.daos.PerfilUsuarioDao;
import com.example.e5_japyld.models.daos.UsuariosModuloDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "PerfilUsuarioServlet", value = "/PerfilUsuarioServlet")
public class PerfilUsuarioServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        response.setContentType("text/html");

        PerfilUsuarioDao perfilUsuarioDao = new PerfilUsuarioDao();

        request.setAttribute("detallesPerfiles", perfilUsuarioDao.detallesUsuario());
        request.setAttribute("listaJuegosVendidos", perfilUsuarioDao.listarJuegosVendidos());
        request.setAttribute("listaJuegosComprados", perfilUsuarioDao.listarJuegosComprados());

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("moduloUsuarios/verPerfilUsuario.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }
}