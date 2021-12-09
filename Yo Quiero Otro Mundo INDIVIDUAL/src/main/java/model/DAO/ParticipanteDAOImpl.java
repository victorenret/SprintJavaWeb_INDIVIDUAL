package model.DAO;

import model.Conexion;
import model.DAO.IParticipanteDAO;
import model.Participante;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ParticipanteDAOImpl implements IParticipanteDAO {

    private Connection cn = null;

    @Override
    public void create(Participante p) {
        String sql = "INSERT INTO base_prueba.participante (nombre, apellido, rut, direccion, telefono) VALUES ('"
                + p.getNombre() + "','" + p.getApellido() + "','" + p.getRut() + "','" + p.getDireccion()
                + "','" + p.getTelefono()+ "')";

        try {

            cn= Conexion.getConn();
            Statement stm = cn.createStatement();
            stm.execute(sql);
            stm.close();

        }catch(SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Participante> readAll() {


        String sql = "select id, nombre, apellido, rut, direccion, telefono from participante ";
        ArrayList<Participante> part = new ArrayList<Participante>();

        try {
            cn = Conexion.getConn();
            Statement stm = cn.createStatement();
            ResultSet rs = stm.executeQuery(sql);

            while(rs.next()) {
                part.add(new Participante(rs.getInt("id"), rs.getString("nombre"), rs.getString("apellido"), rs.getString("rut"), rs.getString("direccion"), rs.getString("telefono")));
            }
            stm.execute(sql);
            stm.close();
        }catch(SQLException e){
            e.printStackTrace();
        }

        return part;

    }

    @Override
    public Participante readOne(int id) {
        //id, nombre, apellido, rut, direccion, telefono

        String sql = "select id, nombre, apellido, rut, direccion, telefono from participante where id = " + id;
        Participante p = null;

        try {
            cn = Conexion.getConn();
            Statement stm = cn.createStatement();
            ResultSet rs = stm.executeQuery(sql);

            if(rs.next()) {
                p = new Participante(rs.getInt("id"), rs.getString("nombre"), rs.getString("apellido"), rs.getString("rut"), rs.getString("direccion"), rs.getString("telefono"));
            }

            rs.close();
            stm.close();
        }catch(SQLException e){
            e.printStackTrace();
        }

        return p;
    }

    @Override
    public void update(Participante p) {

        String sql = "update participante set "
                + "nombre = '" + p.getNombre() + "', "
                + "apellido = '" + p.getApellido() + "', "
                + "rut = '" + p.getRut() + "', "
                + "direccion = '" + p.getDireccion() + "', "
                + "telefono = '" + p.getTelefono() + "'where id ='" + p.getId() + "'";

        try {

            cn= Conexion.getConn();
            Statement stm = cn.createStatement();
            stm.execute(sql);
            stm.close();

        }catch(SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void deletePart(int id) {
        String sql = "DELETE FROM participante WHERE id = '" + id + "'";

        try {
            cn = Conexion.getConn();
            Statement stm = cn.createStatement();

            stm.execute(sql);
            stm.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    public void delete(Participante p) {

    }
}
