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
import logica.Estadistica;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author nicoc
 */
public class EstadisticaJpaController implements Serializable {

    public EstadisticaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    
    
    public EstadisticaJpaController(){
        emf = Persistence.createEntityManagerFactory("AdministracionClub_PU");
        
    }
    public void create(Estadistica estadistica) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(estadistica);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Estadistica estadistica) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            estadistica = em.merge(estadistica);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = estadistica.getIdEstadistica();
                if (findEstadistica(id) == null) {
                    throw new NonexistentEntityException("The estadistica with id " + id + " no longer exists.");
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
            Estadistica estadistica;
            try {
                estadistica = em.getReference(Estadistica.class, id);
                estadistica.getIdEstadistica();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The estadistica with id " + id + " no longer exists.", enfe);
            }
            em.remove(estadistica);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Estadistica> findEstadisticaEntities() {
        return findEstadisticaEntities(true, -1, -1);
    }

    public List<Estadistica> findEstadisticaEntities(int maxResults, int firstResult) {
        return findEstadisticaEntities(false, maxResults, firstResult);
    }

    private List<Estadistica> findEstadisticaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Estadistica.class));
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

    public Estadistica findEstadistica(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Estadistica.class, id);
        } finally {
            em.close();
        }
    }

    public int getEstadisticaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Estadistica> rt = cq.from(Estadistica.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
