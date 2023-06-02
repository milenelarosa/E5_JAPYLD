package com.example.e5_japyld.models.daos;

import com.example.e5_japyld.models.beans.JuegosMenosVendidos;

import java.sql.*;
import java.util.ArrayList;

public class JuegosMenosVendidosDao {
    public ArrayList<JuegosMenosVendidos> listarJuegosMenosVendidos(){

        ArrayList <JuegosMenosVendidos> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        String sql = "SELECT  j.nombreJuegos\n" +
                "FROM personas p, juegoscompradosreservados jcr, juegos j\n" +
                "where  p.idPersona = jcr.id_usuario and jcr.estadoCompraJuego = 'Aceptado' and jcr.id_juego = j.idJuegos\n" +
                "GROUP BY id_juego\n" +
                "ORDER BY count(j.nombreJuegos) ASC\n" +
                "LIMIT 5;";

        String url = "jdbc:mysql://localhost:3306/japyld";

        try (Connection connection = DriverManager.getConnection(url, "root", "123456");
             Statement smt = connection.createStatement();
             ResultSet resultSet = smt.executeQuery(sql)) {

            while(resultSet.next()){
                JuegosMenosVendidos juegosMenosVendidos = new JuegosMenosVendidos();

                juegosMenosVendidos.setNombreJuego(resultSet.getString(1));

                lista.add(juegosMenosVendidos);
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

        return lista;
    }
}
