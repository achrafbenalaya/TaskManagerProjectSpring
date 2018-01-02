package tn.iit.task.controllers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

import tn.iit.task.dao.ProjectDAO;
import tn.iit.task.dao.StateDAO;
import tn.iit.task.dao.UserDAO;
import tn.iit.task.entites.Project;
import tn.iit.task.entites.State;
import tn.iit.task.entites.User;

@Controller
@RequestMapping("admin/state")
public class StateController {

	@Autowired
	private StateDAO dao;

	@Autowired
	private ProjectDAO projectdao;

	@Autowired
	UserDAO udao;

	public String getUserAutentifiedLogin() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in username
		User u = udao.findByLogin(name);
		System.out.println("UserController.user " + u.toStringSimple());
		return u.getLogin();
	}

	@RequestMapping(value = "show")
	public String showForm(Model model) {
		try {
			model.addAttribute("loginUserAuthentified", getUserAutentifiedLogin());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			return "404";
		}
		List<Project> projects = projectdao.getAll();
		model.addAttribute("ProjectsArray", projects);
		return "AddNewState";
	}

	@RequestMapping(value = "updateform", method = RequestMethod.GET)
	public String showUpdateForm(Long id, Model model) {
		try {
			model.addAttribute("loginUserAuthentified", getUserAutentifiedLogin());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			return "404";
		}
		State StateCurrent = dao.findById(id);
		model.addAttribute("oneState", StateCurrent);
		model.addAttribute("ProjectsArray", projectdao.getAll());
		return "UpdateFormStates";
	}

	@RequestMapping(value = "list")
	private String list(Model model) {
		try {
			model.addAttribute("loginUserAuthentified", getUserAutentifiedLogin());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			return "404";
		}
		// recuperation des variable
		List<State> States2 = dao.getAll();
		model.addAttribute("StateArray", States2);
		return "ListOfStates";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	private RedirectView add(String namestate, String datecreation, @RequestParam(name = "project") String project)
			throws ParseException {
		State u = new State();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date creation = format.parse(datecreation);
		Project p = projectdao.findById(Long.parseLong(project));
		u.setNamestate(namestate);
		u.setDatecreation(creation);
		u.setProject(p);
		dao.insert(u);
		return new RedirectView("list");
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	private RedirectView edit(Long id, String namestate, String datecreation,
			@RequestParam(name = "project") String project, HttpServletRequest request) throws ParseException {
		State u = new State();
		Project p = projectdao.findById(Long.parseLong(project));
		u.setId(id);
		u.setNamestate(namestate);
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date creation = format.parse(datecreation);
		u.setDatecreation(creation);
		u.setProject(p);
		dao.update(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("statesRech") != null) {
			session.removeAttribute("statesRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	private RedirectView Delete(long id, HttpServletRequest request) {
		State u = dao.findById(id);
		dao.supprimer(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("statesRech") != null) {
			session.removeAttribute("statesRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "rech", method = RequestMethod.GET)
	private RedirectView Recherche(String table_search, HttpServletRequest request, HttpServletResponse response) {
		List<State> states = new ArrayList<State>();
		states = dao.recherche(table_search);
		for (State state : states) {
			System.out.println("+++" + state.toString());
		}

		HttpSession se = request.getSession();
		se.setAttribute("statesRech", states);
		return new RedirectView("list");
	}

	@RequestMapping(value = "backTolist")
	private RedirectView backTolist(HttpServletRequest request) {
		// recuperation des variable
		HttpSession session = request.getSession();
		if (session.getAttribute("statesRech") != null) {
			session.removeAttribute("statesRech");
		}
		return new RedirectView("list");
	}

}
