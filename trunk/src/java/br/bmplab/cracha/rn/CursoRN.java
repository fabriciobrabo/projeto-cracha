package br.bmplab.cracha.rn;

import br.bmplab.cracha.dao.GenericDAO;
import br.bmplab.cracha.entidade.Curso;
import br.bmplab.cracha.entidade.Evento;
import java.util.List;

public class CursoRN {
    private final GenericDAO<Curso> dao = new GenericDAO<Curso>();

    public Curso novo(){
        return new Curso();
    }
        
    public boolean salvar(Curso x) {
        if (x.getId() == null) {
            return dao.criar(x);
        } else {
            return dao.alterar(x);
        }
    }

    public boolean remover(Curso x) {
        return dao.excluir(x);
    }

    public Curso obter(Integer id) {
        return dao.obter(Curso.class, id);
    }

    public List<Curso> obterTodos() {
        return dao.obterTodos(Curso.class);
    }
}
