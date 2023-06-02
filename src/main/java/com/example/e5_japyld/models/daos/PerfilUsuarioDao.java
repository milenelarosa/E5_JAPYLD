package com.example.e5_japyld.models.daos;

import com.example.e5_japyld.models.beans.PerfilUsuario;

import java.sql.*;
import java.util.ArrayList;

public class PerfilUsuarioDao {
    public ArrayList<PerfilUsuario> detallesUsuario(){

        ArrayList <PerfilUsuario> infUsuario = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        String sql = "SELECT nombre, apellido, correo, fechaDeNacimiento, dni, genero, categoriaJuegoPreferida, fechaRegistro, estado FROM personas\n" +
                "WHERE id_roles = 1 and idPersona = 1;";

        String url = "jdbc:mysql://localhost:3306/japyld";

        try (Connection connection = DriverManager.getConnection(url, "root", "123456");
             Statement smt = connection.createStatement();
             ResultSet resultSet = smt.executeQuery(sql)) {

            while(resultSet.next()){
                PerfilUsuario perfilUsuario = new PerfilUsuario();

                perfilUsuario.setNombre(resultSet.getString(1));
                perfilUsuario.setApellido(resultSet.getString(2));
                perfilUsuario.setCorreo(resultSet.getString(3));
                perfilUsuario.setFechaDeNacimiento(resultSet.getDate(4));
                perfilUsuario.setDni(resultSet.getInt(5));
                perfilUsuario.setGenero(resultSet.getString(6));
                perfilUsuario.setCategoriaJuegoPreferida(resultSet.getString(7));
                perfilUsuario.setFechaRegistro(resultSet.getDate(8));
                perfilUsuario.setEstado(resultSet.getString(9));

                infUsuario.add(perfilUsuario);
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return infUsuario;
    }


    public ArrayList<PerfilUsuario> listarJuegosVendidos(){

        ArrayList <PerfilUsuario> listaJuegosVendidos = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        String sql = "SELECT  j.nombreJuegos, vjg.precio_admin\n" +
                "FROM personas p, ventajuegosgeneral vjg, juegos j\n" +
                "where p.idPersona = 1  and p.idPersona = vjg.id_usuario and vjg.estadoVenta = 'Aceptado' and vjg.id_juego = j.idJuegos;";

        String url = "jdbc:mysql://localhost:3306/japyld";

        try (Connection connection = DriverManager.getConnection(url, "root", "123456");
             Statement smt = connection.createStatement();
             ResultSet resultSet = smt.executeQuery(sql)) {

            while(resultSet.next()){
                PerfilUsuario perfilUsuarioVentas = new PerfilUsuario();

                perfilUsuarioVentas.setNombreJuegos(resultSet.getString(1));
                perfilUsuarioVentas.setPrecio_admin(resultSet.getBigDecimal(2));

                listaJuegosVendidos.add(perfilUsuarioVentas);
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

        return listaJuegosVendidos;
    }


    public ArrayList<PerfilUsuario> listarJuegosComprados(){

        ArrayList <PerfilUsuario> listaJuegosComprados = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        String sql = "SELECT  j.nombreJuegos, j.precio\n" +
                "FROM personas p, juegoscompradosreservados jcr, juegos j\n" +
                "where p.idPersona = 1  and p.idPersona = jcr.id_usuario and jcr.estadoCompraJuego = 'Aceptado' and jcr.id_juego = j.idJuegos;";

        String url = "jdbc:mysql://localhost:3306/japyld";

        try (Connection connection = DriverManager.getConnection(url, "root", "123456");
             Statement smt = connection.createStatement();
             ResultSet resultSet = smt.executeQuery(sql)) {

            while(resultSet.next()){
                PerfilUsuario perfilUsuarioCompras = new PerfilUsuario();

                perfilUsuarioCompras.setNombreJuegos(resultSet.getString(1));
                perfilUsuarioCompras.setPrecio(resultSet.getBigDecimal(2));

                listaJuegosComprados.add(perfilUsuarioCompras);
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

        return listaJuegosComprados;
    }

}
