package tn.iit.task.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import tn.iit.task.entites.Project;
import tn.iit.task.entites.User;

@Component
@EnableTransactionManagement
public class ProjectDAO {
	List<Project> Projects = new ArrayList<Project>();
	@PersistenceContext
	private EntityManager em;

	// @Transactional
	public List<Project> getAll() {
		return em.createQuery("SELECT u FROM Project u", Project.class).getResultList();
	}

	@Transactional
	public void insert(Project u) {
		em.persist(u);
	}

	@Transactional
	public void update(Project u) {
		em.merge(u);
	}

	@Transactional
	public void supprimer(Project u) {
		em.remove(em.contains(u) ? u : em.merge(u));
	}

	// @Transactional
	public Project findById(long id) {
		Query q = em.createQuery("SELECT u FROM Project u WHERE u.id=:id", Project.class);
		q.setParameter("id", id);
		Project u = (Project) q.getSingleResult();
		return u;
	}

	// @Transactional
	public Project findByName(String nameProject) {
		Query q = em.createQuery("SELECT u FROM Project u WHERE u.nameProject=:ach", Project.class);
		Project u = (Project) q.setParameter("ach", nameProject).getResultList();
		return u;
	}

	public List<Project> recherche(String chaine) {
		List<Project> result = new ArrayList<Project>();

		List<Project> resultByNameProject = em
				.createQuery("SELECT u FROM Project u WHERE u.nameProject LIKE '%" + chaine + "%'", Project.class)
				.getResultList();
		List<Project> resultByDateDebut = em
				.createQuery("SELECT u FROM Project u WHERE u.dateDebut LIKE '%" + chaine + "%'", Project.class)
				.getResultList();
		List<Project> resultByDateFin = em
				.createQuery("SELECT u FROM Project u WHERE u.dateFin LIKE '%" + chaine + "%'", Project.class)
				.getResultList();
		List<Project> resultByDescription = em
				.createQuery("SELECT u FROM Project u WHERE u.description LIKE '%" + chaine + "%'", Project.class)
				.getResultList();
		List<Project> resultByType = em
				.createQuery("SELECT u FROM Project u WHERE u.type LIKE '%" + chaine + "%'", Project.class)
				.getResultList();

		if (resultByNameProject.size() != 0) {
			for (Project Project : resultByNameProject) {
				if (result.contains(Project) == false) {
					result.add(Project);
				}
			}
		}

		if (resultByDateDebut.size() != 0) {
			for (Project Project : resultByDateDebut) {
				if (result.contains(Project) == false) {
					result.add(Project);
				}
			}
		}
		if (resultByDateFin.size() != 0) {
			for (Project Project : resultByDateFin) {
				if (result.contains(Project) == false) {
					result.add(Project);
				}
			}
		}

		if (resultByType.size() != 0) {
			for (Project Project : resultByType) {
				if (result.contains(Project) == false) {
					result.add(Project);
				}
			}
		}

		if (resultByDescription.size() != 0) {
			for (Project Project : resultByDescription) {
				if (result.contains(Project) == false) {
					result.add(Project);
				}
			}
		}

		return result;
	}

}
