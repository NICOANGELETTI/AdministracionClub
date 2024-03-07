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
import logica.Goleador;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author nicoc
 */
public class GoleadorJpaController implements Serializable {

    public GoleadorJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

      public GoleadorJpaController(){
        emf = Persistence.createEntityManagerFactory("adminClub_PU");
        
    }
    
    public void create(Goleador goleador) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(goleador);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Goleador goleador) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            goleador = em.merge(goleador);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = goleador.getIdJugador();
                if (findGoleador(id) == null) {
                    throw new NonexistentEntityException("The goleador with id " + id + " no longer exists.");
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
            Goleador goleador;
            try {
                goleador = em.getReference(Goleador.class, id);
                goleador.getIdJugador();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The goleador with id " + id + " no longer exists.", enfe);
            }
            em.remove(goleador);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Goleador> findGoleadorEntities() {
        return findGoleadorEntities(true, -1, -1);
    }

    public List<Goleador> findGoleadorEntities(int maxResults, int firstResult) {
        return findGoleadorEntities(false, maxResults, firstResult);
    }

    private List<Goleador> findGoleadorEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Goleador.class));
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

    public Goleador findGoleador(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Goleador.class, id);
        } finally {
            em.close();
        }
    }

    public int getGoleadorCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Goleador> rt = cq.from(Goleador.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
