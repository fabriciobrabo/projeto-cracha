package br.bmplab.cracha.rn;

import br.bmplab.cracha.dao.GenericDAO;
import br.bmplab.cracha.entidade.Evento;
import br.bmplab.cracha.entidade.Inscrito;
import java.util.List;

public class EventoRN {
    private final GenericDAO<Evento> dao = new GenericDAO<Evento>();

    public Evento novo(){
        return new Evento();
    }
        
    public boolean salvar(Evento x) {
        if (x.getId() == null) {
            return dao.criar(x);
        } else {
            return dao.alterar(x);
        }
    }

    public boolean remover(Evento x) {
        return dao.excluir(x);
    }

    public Evento obter(Integer id) {
        return dao.obter(Evento.class, id);
    }

    public List<Evento> obterTodos() {
        return dao.obterTodos(Evento.class);
    }
}
