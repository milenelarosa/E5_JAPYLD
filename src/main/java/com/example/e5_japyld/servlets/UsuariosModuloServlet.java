package com.example.e5_japyld.servlets;

import com.example.e5_japyld.models.beans.UsuariosModulo;
import com.example.e5_japyld.models.daos.UsuariosModuloDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UsuariosModuloServlet", value = "/UsuariosModuloServlet")
public class UsuariosModuloServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        response.setContentType("text/html");

        UsuariosModuloDao usuariosModuloDao = new UsuariosModuloDao();

        request.setAttribute("lista", usuariosModuloDao.listarUsuarios());

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("moduloUsuarios/listaUsuarios.jsp");
        requestDispatcher.forward(request,response);

    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }
}