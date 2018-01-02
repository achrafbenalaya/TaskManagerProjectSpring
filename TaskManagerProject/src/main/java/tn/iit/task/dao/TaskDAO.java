package tn.iit.task.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import tn.iit.task.entites.Task;

@Component
@EnableTransactionManagement
public class TaskDAO {

	List<Task> tasks = new ArrayList<Task>();
	@PersistenceContext
	private EntityManager em;

	// @Transactional
	public List<Task> getAll() {
		return em.createQuery("SELECT u FROM Task u", Task.class).getResultList();
	}

	@Transactional
	public void insert(Task u) {
		em.persist(u);
	}

	@Transactional
	public void update(Task u) {
		em.merge(u);
	}

	@Transactional
	public void supprimer(Task u) {
		em.remove(em.contains(u) ? u : em.merge(u));
	}

	// @Transactional
	public Task findById(long id) {
		Query q = em.createQuery("SELECT u FROM Task u WHERE u.id=:id", Task.class);
		q.setParameter("id", id);
		Task u = (Task) q.getSingleResult();
		return u;
	}

	// @Transactional
	public Task findByName(String nameTask) {
		Query q = em.createQuery("SELECT u FROM Task u WHERE u.nameTask=:ach", Task.class);
		Task u = (Task) q.setParameter("ach", nameTask).getResultList();
		return u;
	}

	public List<Task> recherche(String chaine) {
		List<Task> result = new ArrayList<Task>();

		List<Task> resultByName = em
				.createQuery("SELECT u FROM Task u WHERE u.nametask LIKE '%" + chaine + "%'", Task.class)
				.getResultList();
		List<Task> resultByProgress = em
				.createQuery("SELECT u FROM Task u WHERE u.progress LIKE '%" + chaine + "%'", Task.class)
				.getResultList();
		List<Task> resultByComments = em
				.createQuery("SELECT u FROM Task u WHERE u.comments LIKE '%" + chaine + "%'", Task.class)
				.getResultList();
		List<Task> resultByDescription = em
				.createQuery("SELECT u FROM Task u WHERE u.description LIKE '%" + chaine + "%'", Task.class)
				.getResultList();
		List<Task> resultByDateDebut = em
				.createQuery("SELECT u FROM Task u WHERE u.dateDebut LIKE '%" + chaine + "%'", Task.class)
				.getResultList();
		List<Task> resultByDueDate = em
				.createQuery("SELECT u FROM Task u WHERE u.dueDate LIKE '%" + chaine + "%'", Task.class)
				.getResultList();
		List<Task> resultByDateFin = em
				.createQuery("SELECT u FROM Task u WHERE u.dateFin LIKE '%" + chaine + "%'", Task.class)
				.getResultList();
		List<Task> resultByState = em
				.createQuery("SELECT u FROM Task u WHERE u.state.namestate LIKE '%" + chaine + "%'", Task.class)
				.getResultList();

		List<Task> resultByPriority = new ArrayList<Task>();

		if ("high priority".equalsIgnoreCase(chaine)) {
			resultByPriority = em.createQuery("SELECT u FROM Task u WHERE u.priority=1", Task.class).getResultList();
		} else if ("low priority".equalsIgnoreCase(chaine)) {
			resultByPriority = em.createQuery("SELECT u FROM Task u WHERE u.priority=0", Task.class).getResultList();
		}

		if (resultByName.size() != 0) {
			for (Task Task : resultByName) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByProgress.size() != 0) {
			for (Task Task : resultByProgress) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByComments.size() != 0) {
			for (Task Task : resultByComments) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByDescription.size() != 0) {
			for (Task Task : resultByDescription) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByDateDebut.size() != 0) {
			for (Task Task : resultByDateDebut) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByDateFin.size() != 0) {
			for (Task Task : resultByDateFin) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByDueDate.size() != 0) {
			for (Task Task : resultByDueDate) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByPriority.size() != 0) {
			for (Task Task : resultByPriority) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}

		if (resultByState.size() != 0) {
			for (Task Task : resultByState) {
				if (result.contains(Task) == false) {
					result.add(Task);
				}
			}
		}
		return result;
	}

}
