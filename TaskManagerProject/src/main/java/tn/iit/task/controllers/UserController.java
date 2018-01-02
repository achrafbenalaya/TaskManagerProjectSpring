package tn.iit.task.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NonUniqueResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import tn.iit.task.dao.TeamDAO;
import tn.iit.task.dao.UserDAO;
import tn.iit.task.entites.Team;
import tn.iit.task.entites.User;

@Controller
@RequestMapping("admin/user")
public class UserController {

	@Autowired
	UserDAO dao;

	@Autowired
	TeamDAO teamDAO;

	public User getUserAutentified() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in username
		User u = dao.findByLogin(name);
		// System.out.println("UserController.user " + u.toStringSimple());
		return u;
	}

	@RequestMapping(value = "show")
	public String showForm(Model model) {
		List<Team> teams = teamDAO.getAll();
		model.addAttribute("teamArray", teams);
		try {
			model.addAttribute("loginUserAuthentified", getUserAutentified().getLogin());
		} catch (NonUniqueResultException e1) {
			System.out.println(e1.getMessage());
			return "404";
		}
		return "AddnewUser";
	}

	@RequestMapping(value = "updateform", method = RequestMethod.GET)
	public String showUpdateForm(Long id, Model model) {
		try {
			model.addAttribute("loginUserAuthentified", getUserAutentified().getLogin());
		} catch (NonUniqueResultException e1) {
			System.out.println(e1.getMessage());
			return "404";
		}
		User userCurrent = dao.findById(id);
		model.addAttribute("oneuser", userCurrent);
		List<Team> teams = teamDAO.getAll();
		model.addAttribute("teamArray", teams);
		return "UpdateFormUsers";
	}

	@RequestMapping(value = "list")
	private String list(Model model, HttpServletRequest request) {
		try {
			model.addAttribute("loginUserAuthentified", getUserAutentified().getLogin());
		} catch (NonUniqueResultException e1) {
			System.out.println(e1.getMessage());
			return "404";
		}
		// recuperation des variable
		// HttpSession session = request.getSession();
		// if (session.getAttribute("aa")!=null) {
		// session.removeAttribute("aa");
		// }
		List<User> users2 = dao.getAll();
		model.addAttribute("userArray", users2);
		try {
			return "ListUsers";
		} catch (Exception e) {
			return "";
		}
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	private RedirectView add(String firstname, String lastname, String login, String password, String typeuser,
			String email, @RequestParam(name = "team") String team) {
		User u = new User();
		u.setFirstname(firstname);
		u.setLastname(lastname);
		u.setLogin(login);
		u.setPassword(password);
		u.setTypeuser(typeuser);
		u.setEmail(email);
		if ("".equals(team) == false) {
			Team t = teamDAO.findById(Long.parseLong(team));
			u.setTeam(t);
		} else {
			u.setTeam(null);
		}
		dao.insert(u);
		return new RedirectView("list");
	}

	@RequestMapping(value = "reg", method = RequestMethod.POST)
	private RedirectView register(String firstname, String lastname, String login, String password, String typeuser,
			String email) {
		User u = new User();
		u.setFirstname(firstname);
		u.setLastname(lastname);
		u.setLogin(login);
		u.setPassword(password);
		u.setTypeuser("free");
		u.setEmail(email);
		dao.insert(u);
		return new RedirectView("list");
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	private RedirectView edit(Long id, String firstname, String lastname, String login, String password,
			String typeuser, String email, @RequestParam(name = "team") String team, HttpServletRequest request) {
		User u = new User();
		u.setId(id);
		u.setFirstname(firstname);
		u.setLastname(lastname);
		u.setLogin(login);
		u.setPassword(password);
		u.setTypeuser(typeuser);
		u.setEmail(email);
		if ("".equals(team) == false) {
			Team t = teamDAO.findById(Long.parseLong(team));
			u.setTeam(t);
		} else {
			u.setTeam(null);
		}
		dao.update(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("aa") != null) {
			session.removeAttribute("aa");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	private RedirectView Delete(long id, HttpServletRequest request) {
		User u = dao.findById(id);
		dao.supprimer(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("aa") != null) {
			session.removeAttribute("aa");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "rech", method = RequestMethod.GET)
	private RedirectView Recherche(String table_search, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		List<User> users = new ArrayList<User>();
		users = dao.recherche(table_search);
		HttpSession se = request.getSession();
		se.setAttribute("aa", users);
		return new RedirectView("list");
	}

	@RequestMapping(value = "backTolist")
	private RedirectView backTolist(HttpServletRequest request) {
		// recuperation des variable
		HttpSession session = request.getSession();
		if (session.getAttribute("aa") != null) {
			session.removeAttribute("aa");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "showProfile")
	public String showProfile(Model model) {
		model.addAttribute("UserAuthentified", getUserAutentified());
		return "UserProfile";
	}

	@RequestMapping(value = "editProfile", method = RequestMethod.POST)
	private RedirectView editProfile(Long id, String firstname, String lastname, String login, String password,
			String email, HttpServletRequest request) {
		User u = new User();
		u.setId(id);
		u.setFirstname(firstname);
		u.setLastname(lastname);
		u.setLogin(login);
		u.setPassword(password);
		u.setTypeuser(dao.findById(id).getTypeuser());
		u.setEmail(email);
		u.setTeam(dao.findById(id).getTeam());
		System.out.println("User Controller user to modifie in user profile " + u.toStringSimple());
		dao.update(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("aa") != null) {
			session.removeAttribute("aa");
		}
		return new RedirectView("showProfile");
	}
}
