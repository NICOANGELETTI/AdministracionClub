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
import logica.Asistidor;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author nicoc
 */
public class AsistidorJpaController implements Serializable {

    public AsistidorJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
public AsistidorJpaController(){
        emf = Persistence.createEntityManagerFactory("adminClub_PU");
        
    }
    public void create(Asistidor asistidor) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(asistidor);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Asistidor asistidor) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            asistidor = em.merge(asistidor);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = asistidor.getIdJugador();
                if (findAsistidor(id) == null) {
                    throw new NonexistentEntityException("The asistidor with id " + id + " no longer exists.");
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
            Asistidor asistidor;
            try {
                asistidor = em.getReference(Asistidor.class, id);
                asistidor.getIdJugador();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The asistidor with id " + id + " no longer exists.", enfe);
            }
            em.remove(asistidor);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Asistidor> findAsistidorEntities() {
        return findAsistidorEntities(true, -1, -1);
    }

    public List<Asistidor> findAsistidorEntities(int maxResults, int firstResult) {
        return findAsistidorEntities(false, maxResults, firstResult);
    }

    private List<Asistidor> findAsistidorEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Asistidor.class));
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

    public Asistidor findAsistidor(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Asistidor.class, id);
        } finally {
            em.close();
        }
    }

    public int getAsistidorCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Asistidor> rt = cq.from(Asistidor.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
