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

import tn.iit.task.entites.User;

@Component
@EnableTransactionManagement
public class UserDAO {
	List<User> users = new ArrayList<User>();
	@PersistenceContext
	private EntityManager em;

	// @Transactional
	public List<User> getAll() {
		return em.createQuery("SELECT u FROM User u", User.class).getResultList();
	}

	@Transactional
	public void insert(User u) {
		em.persist(u);
	}

	@Transactional
	public void update(User u) {
		em.merge(u);
	}

	@Transactional
	public void supprimer(User u) {
		em.remove(em.contains(u) ? u : em.merge(u));
	}

	// @Transactional
	public User findById(long id) {
		Query q = em.createQuery("SELECT u FROM User u WHERE u.id=:id", User.class);
		q.setParameter("id", id);
		User u = (User) q.getSingleResult();
		return u;
	}

	// @Transactional
	// public List<User> findByFirstName(String name) {
	// Query q = em.createQuery("SELECT u FROM User u WHERE u.firstname=:mar",
	// User.class);
	// List<User> u = (List<User>) q.setParameter("mar", name).getResultList();
	// return u;
	// }

	public User findByLogin(String login) {
		Query q = em.createQuery("SELECT u FROM User u WHERE u.login=:mar", User.class);
		User u = (User) q.setParameter("mar", login).getSingleResult();
		return u;
	}

	public List<User> recherche(String chaine) {
		List<User> result = new ArrayList<User>();

		List<User> resultByFirstName = em
				.createQuery("SELECT u FROM User u WHERE u.firstname LIKE '%" + chaine + "%'", User.class)
				.getResultList();
		List<User> resultByLastName = em
				.createQuery("SELECT u FROM User u WHERE u.lastname LIKE '%" + chaine + "%'", User.class)
				.getResultList();
		List<User> resultByLogin = em
				.createQuery("SELECT u FROM User u WHERE u.login LIKE '%" + chaine + "%'", User.class).getResultList();
		List<User> resultByEmail = em
				.createQuery("SELECT u FROM User u WHERE u.email LIKE '%" + chaine + "%'", User.class).getResultList();
		List<User> resultByType = em
				.createQuery("SELECT u FROM User u WHERE u.typeuser LIKE '%" + chaine + "%'", User.class)
				.getResultList();
		List<User> resultByTeam = em
				.createQuery("SELECT u FROM User u WHERE u.team.name LIKE '%" + chaine + "%'", User.class)
				.getResultList();

		if (resultByEmail.size() != 0) {
			for (User user : resultByEmail) {
				if (result.contains(user) == false) {
					result.add(user);
				}
			}
		}

		if (resultByFirstName.size() != 0) {
			for (User user : resultByFirstName) {
				if (result.contains(user) == false) {
					result.add(user);
				}
			}
		}

		if (resultByLastName.size() != 0) {
			for (User user : resultByLastName) {
				if (result.contains(user) == false) {
					result.add(user);
				}
			}
		}

		if (resultByLogin.size() != 0) {
			for (User user : resultByLogin) {
				if (result.contains(user) == false) {
					result.add(user);
				}
			}
		}

		if (resultByType.size() != 0) {
			for (User user : resultByType) {
				if (result.contains(user) == false) {
					result.add(user);
				}
			}
		}

		if (resultByTeam.size() != 0) {
			for (User user : resultByTeam) {
				if (result.contains(user) == false) {
					result.add(user);
				}
			}
		}

		return result;
	}

}
