package br.bmplab.cracha.rn;

import br.bmplab.cracha.dao.GenericDAO;
import br.bmplab.cracha.entidade.Coordenacao;
import java.util.List;

public class CoordenacaoRN {
    private final GenericDAO<Coordenacao> dao = new GenericDAO<Coordenacao>();

    public Coordenacao novo(){
        return new Coordenacao();
    }
        
    public boolean salvar(Coordenacao x) {
        if (x.getId() == null) {
            return dao.criar(x);
        } else {
            return dao.alterar(x);
        }
    }

    public boolean remover(Coordenacao x) {
        return dao.excluir(x);
    }

    public Coordenacao obter(Integer id) {
        return dao.obter(Coordenacao.class, id);
    }

    public List<Coordenacao> obterTodos() {
        return dao.obterTodos(Coordenacao.class);
    }
}
