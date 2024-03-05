/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import logica.Resultado;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author nicoc
 */
public class ResultadoJpaController implements Serializable {

    public ResultadoJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public ResultadoJpaController(){
        emf = Persistence.createEntityManagerFactory("adminClub_PU");
        
    }
    
    public void create(Resultado resultado) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(resultado);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Resultado resultado) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            resultado = em.merge(resultado);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = resultado.getIdResultado();
                if (findResultado(id) == null) {
                    throw new NonexistentEntityException("The resultado with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Resultado resultado;
            try {
                resultado = em.getReference(Resultado.class, id);
                resultado.getIdResultado();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The resultado with id " + id + " no longer exists.", enfe);
            }
            em.remove(resultado);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Resultado> findResultadoEntities() {
        return findResultadoEntities(true, -1, -1);
    }

    public List<Resultado> findResultadoEntities(int maxResults, int firstResult) {
        return findResultadoEntities(false, maxResults, firstResult);
    }

    private List<Resultado> findResultadoEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Resultado.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Resultado findResultado(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Resultado.class, id);
        } finally {
            em.close();
        }
    }

    public int getResultadoCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Resultado> rt = cq.from(Resultado.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
