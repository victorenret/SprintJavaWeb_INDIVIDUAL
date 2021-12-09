package model.DAO;

import model.Participante;

import java.util.List;

public interface IParticipanteDAO {

    public void create(Participante p);
    public List<Participante> readAll();
    public Participante readOne(int id);
    public void update(Participante p);
    public void deletePart(int id);
    public void delete(Participante p);


}
