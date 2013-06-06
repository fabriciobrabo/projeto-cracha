package br.bmplab.cracha.rn;

import br.bmplab.cracha.dao.InscritoDAO;
import br.bmplab.cracha.entidade.Inscrito;
import java.util.List;

public class InscritoRN {
    private final InscritoDAO dao = new InscritoDAO();

    public Inscrito novo(){
        return new Inscrito();
    }
        
    public boolean salvar(Inscrito i) {
        if (i.getId() == null) {
            return dao.criar(i);
        } else {
            return dao.alterar(i);
        }
    }

    public boolean remover(Inscrito i) {
        return dao.excluir(i);
    }

    public Inscrito obter(Integer id) {
        return dao.obter(Inscrito.class, id);
    }

    public List<Inscrito> obterTodos() {
        return dao.obterTodos(Inscrito.class);
    }

    public boolean atualizarSituacao(Inscrito i){
        i.setCredenciado(i.getCredenciado() == 0 ? 1 : 0);
        return dao.alterar(i);
    }
    
    public List<Inscrito> listCredenciados(){
        return dao.findByCredenciado(1);
    }
    
    public List<Inscrito> listNaoCredenciados(){
        return dao.findByCredenciado(0);
    }
}
