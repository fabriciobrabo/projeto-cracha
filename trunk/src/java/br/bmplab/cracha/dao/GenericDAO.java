package br.bmplab.cracha.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

public class GenericDAO<I> implements InterfaceDAO<I>{

    private EntityManager em = FabricaEntityManager.obterFabrica().createEntityManager();

    public GenericDAO() {
    }

    public boolean iniciarTransacao() {
        try {
            if (em.getTransaction().isActive()) {
                return true;
            }
            em.getTransaction().begin();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean concluirTransacao() {
        try {
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean cancelarTransacao() {
        try {
            em.getTransaction().rollback();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public boolean criar(I o) {
        try {
            this.iniciarTransacao();
            em.persist(o);
            this.concluirTransacao();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (em.isOpen()) {
                em.getTransaction().rollback();
            }
            return false;
        }
    }

    @Override
    public boolean excluir(I o) {
        try {
            this.iniciarTransacao();
            em.remove(em.merge(o));
            this.concluirTransacao();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (em.isOpen()) {
                em.getTransaction().rollback();
            }
            return false;
        }
    }

    @Override
    public boolean alterar(I o) {
        try {
            this.iniciarTransacao();
            em.merge(o);
            this.concluirTransacao();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (em.isOpen()) {
                em.getTransaction().rollback();
            }
            return false;
        }
    }

    @Override
    public I obter(Class<I> classe, Object id) {
        if (id == null) {
            return null;
        }
        String query = classe.getSimpleName() + ".findById";
        final Query q = em.createNamedQuery(query);
        try {
            return (I) q.setParameter("id", id).getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public List<I> obterTodos(Class<I> classe) {
        String query = classe.getSimpleName() + ".findAll";
        Query q = em.createNamedQuery(query);
        return (List<I>) q.getResultList();
    }

    public List<I> obterLista(Class<I> classe,
            List<String> criterios,
            List valores,
            final boolean AND) {
        if (criterios == null
                || valores == null
                || criterios.size() != valores.size()
                || criterios.size() < 1) {
            return null;
        }
        String query = "SELECT o FROM " + classe.getSimpleName() + " o WHERE ";
        query += " o." + criterios.get(0) + " = :" + criterios.get(0);
        final String CONECTIVO = AND ? " AND " : " OR ";
        for (int i = 1; i < criterios.size(); i++) {
            query += CONECTIVO + " o." + criterios.get(i) + " = :" + criterios.get(i);
        }
        final Query q = em.createQuery(query);
        try {
            for (int i = 0; i < valores.size(); i++) {
                q.setParameter(criterios.get(i), valores.get(i));
            }
            return (List<I>) q.getResultList();
        } catch (Exception e) {
            System.out.println("Erro: " + e);
            return null;
        }
    }

    /**
     * @return the entityManager
     */
    protected EntityManager getEntityManager() {
        return em;
    }

    /**
     * @param entityManager the entityManager to set
     */
    protected void setEntityManager(EntityManager entityManager) {
        this.em = entityManager;
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
        if (this.em != null && this.em.isOpen()) {
            this.em.flush();
            this.em.clear();
            this.em.close();
        }
    }
}
