package tn.iit.task.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import tn.iit.task.entites.State;

@Component
@EnableTransactionManagement
public class StateDAO {

	List<State> States = new ArrayList<State>();
	@PersistenceContext
	private EntityManager em;

	// @Transactional
	public List<State> getAll() {
		return em.createQuery("SELECT u FROM State u", State.class).getResultList();
	}

	@Transactional
	public void insert(State u) {
		em.persist(u);
	}

	@Transactional
	public void update(State u) {
		em.merge(u);
	}

	@Transactional
	public void supprimer(State u) {
		em.remove(em.contains(u) ? u : em.merge(u));
	}

	// @Transactional
	public State findById(long id) {
		Query q = em.createQuery("SELECT u FROM State u WHERE u.id=:id", State.class);
		q.setParameter("id", id);
		State u = (State) q.getSingleResult();
		return u;
	}

	// @Transactional
	// public State findByFirstName(String name) {
	// Query q = em.createQuery("SELECT u FROM State u WHERE u.firstname=:ach",
	// State.class);
	// State u = (State) q.setParameter("ach", name).getResultList();
	// return u;
	// }
	public List<State> recherche(String chaine) {
		List<State> result = new ArrayList<State>();
		List<State> resultByName = em
				.createQuery("SELECT u FROM State u WHERE u.namestate LIKE '%" + chaine + "%'", State.class)
				.getResultList();

		List<State> resultByDate = em
				.createQuery("SELECT u FROM State u WHERE u.datecreation LIKE '%" + chaine + "%'", State.class)
				.getResultList();

		List<State> resultByProjectName = em
				.createQuery("SELECT u FROM State u WHERE u.project.nameProject LIKE '%" + chaine + "%'", State.class)
				.getResultList();

		List<State> resultByProjectType = em
				.createQuery("SELECT u FROM State u WHERE u.project.type LIKE '%" + chaine + "%'", State.class)
				.getResultList();

		if (resultByName.size() != 0) {
			for (State o : resultByName) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByDate.size() != 0) {
			for (State o : resultByDate) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByProjectName.size() != 0) {
			for (State o : resultByProjectName) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByProjectType.size() != 0) {
			for (State o : resultByProjectType) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		return result;
	}

}
