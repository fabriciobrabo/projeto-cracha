package br.bmplab.cracha.dao;

import br.bmplab.cracha.entidade.Inscrito;
import java.util.List;
import javax.persistence.Query;

/**
 *
 * @author stelio
 */
public class InscritoDAO extends GenericDAO<Inscrito>{
    public List<Inscrito> findByCredenciado(int credenciado) {
        String query = "Inscrito.findByCredenciado";
        final Query q = getEntityManager().createNamedQuery(query);
        return (List<Inscrito>) q.setParameter("credenciado", credenciado).getResultList();
    }
}
