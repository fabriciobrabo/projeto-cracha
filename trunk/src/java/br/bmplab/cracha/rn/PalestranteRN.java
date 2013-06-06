package br.bmplab.cracha.rn;

import br.bmplab.cracha.dao.GenericDAO;
import br.bmplab.cracha.entidade.Palestrante;
import java.util.List;

public class PalestranteRN {
    private final GenericDAO<Palestrante> dao = new GenericDAO<Palestrante>();

    public Palestrante novo(){
        return new Palestrante();
    }
        
    public boolean salvar(Palestrante x) {
        if (x.getId() == null) {
            return dao.criar(x);
        } else {
            return dao.alterar(x);
        }
    }

    public boolean remover(Palestrante x) {
        return dao.excluir(x);
    }

    public Palestrante obter(Integer id) {
        return dao.obter(Palestrante.class, id);
    }

    public List<Palestrante> obterTodos() {
        return dao.obterTodos(Palestrante.class);
    }
}
