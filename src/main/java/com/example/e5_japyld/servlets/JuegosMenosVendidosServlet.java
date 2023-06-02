package com.example.e5_japyld.servlets;

import com.example.e5_japyld.models.daos.JuegosMenosVendidosDao;
import com.example.e5_japyld.models.daos.PerfilUsuarioDao;
import com.example.e5_japyld.models.daos.UsuariosModuloDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "JuegosMenosVendidosServlet", value = "/JuegosMenosVendidosServlet")
public class JuegosMenosVendidosServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        response.setContentType("text/html");

        JuegosMenosVendidosDao juegosMenosVendidosDao = new JuegosMenosVendidosDao();

        request.setAttribute("lista", juegosMenosVendidosDao.listarJuegosMenosVendidos());

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("moduloUsuarios/verJuegosMenosVendidos.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }
}