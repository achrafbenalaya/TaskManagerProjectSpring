package tn.iit.task.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

//import com.sun.xml.internal.stream.Entity;
import tn.iit.task.entites.Organisation;
import tn.iit.task.entites.User;

@Component
@EnableTransactionManagement
public class OrganisationDAO {
	List<Organisation> organs = new ArrayList<Organisation>();
	@PersistenceContext
	private EntityManager em;

	// @Transactional
	public List<Organisation> getAll() {
		return em.createQuery("SELECT u FROM Organisation u", Organisation.class).getResultList();
	}

	@Transactional
	public void insert(Organisation u) {
		em.persist(u);
	}

	@Transactional
	public void update(Organisation u) {
		em.merge(u);
	}

	@Transactional
	public void supprimer(Organisation u) {
		em.remove(em.contains(u) ? u : em.merge(u));
	}

	// @Transactional
	public Organisation findById(long id) {
		Query q = em.createQuery("SELECT u FROM Organisation u WHERE u.id=:id", Organisation.class);
		q.setParameter("id", id);
		Organisation u = (Organisation) q.getSingleResult();
		return u;
	}

	// @Transactional
	public Organisation findByFirstName(String name) {
		Query q = em.createQuery("SELECT u FROM Organisation u WHERE u.name=:ach", Organisation.class);
		Organisation u = (Organisation) q.setParameter("ach", name).getResultList();
		return u;
	}

	public List<Organisation> recherche(String chaine) {
		List<Organisation> result = new ArrayList<Organisation>();
		List<Organisation> resultByName = em
				.createQuery("SELECT u FROM Organisation u WHERE u.name LIKE '%" + chaine + "%'", Organisation.class)
				.getResultList();

		List<Organisation> resultByDate = em
				.createQuery("SELECT u FROM Organisation u WHERE u.datecreation LIKE '%" + chaine + "%'",
						Organisation.class)
				.getResultList();

		List<Organisation> resultByType = em
				.createQuery("SELECT u FROM Organisation u WHERE u.type LIKE '%" + chaine + "%'", Organisation.class)
				.getResultList();
		// List<Organisation> resultByEmail = em
		// .createQuery("SELECT u FROM Organisation u WHERE u. LIKE '%" + chaine + "%'",
		// Organisation.class).getResultList();

		if (resultByName.size() != 0) {
			for (Organisation o : resultByName) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByType.size() != 0) {
			for (Organisation o : resultByType) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		if (resultByDate.size() != 0) {
			for (Organisation o : resultByDate) {
				if (result.contains(o) == false) {
					result.add(o);
				}
			}
		}

		return result;
	}

}
