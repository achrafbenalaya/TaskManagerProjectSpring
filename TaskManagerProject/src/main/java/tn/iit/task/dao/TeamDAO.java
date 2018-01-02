package tn.iit.task.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import tn.iit.task.entites.Team;

@Component
@EnableTransactionManagement
public class TeamDAO {

	List<Team> Teams = new ArrayList<Team>();
	@PersistenceContext
	private EntityManager em;

	// @Transactional
	public List<Team> getAll() {
		return em.createQuery("SELECT u FROM Team u", Team.class).getResultList();
	}

	@Transactional
	public void insert(Team u) {
		em.persist(u);
	}

	@Transactional
	public void update(Team u) {
		em.merge(u);
	}

	@Transactional
	public void supprimer(Team u) {
		em.remove(em.contains(u) ? u : em.merge(u));
	}

	// @Transactional
	public Team findById(long id) {
		Query q = em.createQuery("SELECT u FROM Team u WHERE u.id=:id", Team.class);
		q.setParameter("id", id);
		Team u = (Team) q.getSingleResult();
		return u;
	}

	// @Transactional
	public Team findByFirstName(String name) {
		Query q = em.createQuery("SELECT u FROM Team u WHERE u.firstname=:ach", Team.class);
		Team u = (Team) q.setParameter("ach", name).getResultList();
		return u;
	}

	public List<Team> recherche(String chaine) {
		List<Team> result = new ArrayList<Team>();
		List<Team> resultByName = em
				.createQuery("SELECT u FROM Team u WHERE u.name LIKE '%" + chaine + "%'", Team.class).getResultList();

		List<Team> resultByType = em
				.createQuery("SELECT u FROM Team u WHERE u.typeTeam LIKE '%" + chaine + "%'", Team.class)
				.getResultList();

		List<Team> resultByOrganisation = em
				.createQuery("SELECT u FROM Team u WHERE u.organisation.name LIKE '%" + chaine + "%'", Team.class)
				.getResultList();

		List<Team> resultByProject = em
				.createQuery("SELECT u FROM Team u WHERE u.project.nameProject LIKE '%" + chaine + "%'", Team.class)
				.getResultList();

		if (resultByName.size() != 0) {
			for (Team o : resultByName) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByType.size() != 0) {
			for (Team o : resultByType) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByOrganisation.size() != 0) {
			for (Team o : resultByOrganisation) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByProject.size() != 0) {
			for (Team o : resultByProject) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		return result;
	}

}
