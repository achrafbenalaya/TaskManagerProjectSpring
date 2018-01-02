package tn.iit.task.controllers;

import java.util.ArrayList;
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

import tn.iit.task.dao.OrganisationDAO;
import tn.iit.task.dao.ProjectDAO;
import tn.iit.task.dao.TeamDAO;
import tn.iit.task.dao.UserDAO;
import tn.iit.task.entites.Organisation;
import tn.iit.task.entites.Team;
import tn.iit.task.entites.User;

@Controller
@RequestMapping("admin/team")
public class TeamController {

	@Autowired
	TeamDAO dao;
	@Autowired
	OrganisationDAO organisationDAO;
	@Autowired
	ProjectDAO prjectDAO;
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
		List<Organisation> organisations = organisationDAO.getAll();
		model.addAttribute("OrganisationArray", organisations);
		model.addAttribute("ProjectArray", prjectDAO.getAll());
		return "AddNewTeam";
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
		Team TeamCurrent = dao.findById(id);
		model.addAttribute("oneTeam", TeamCurrent);
		List<Organisation> organisations = organisationDAO.getAll();
		model.addAttribute("OrganisationArray", organisations);
		model.addAttribute("ProjectArray", prjectDAO.getAll());
		return "UpdateFormTeams";
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
		List<Team> Teams2 = dao.getAll();
		model.addAttribute("teamArray", Teams2);
		// List<Organisation> organisations = organisationDAO.getAll();
		// for (Organisation organisation : organisations) {
		// System.out.println(organisation.toString());
		// }
		// model.addAttribute("organisations", organisations);
		return "ListTeams";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	private RedirectView add(String name, String typeTeam, @RequestParam(name = "organization") String organization,
			@RequestParam(name = "project") String project) {
		Team u = new Team();
		u.setName(name);
		u.setTypeTeam(typeTeam);
		Organisation o = organisationDAO.findById(Long.parseLong(organization));
		u.setOrganisation(o);
		if ("".equals(project) == false) {
			u.setProject(prjectDAO.findById(Long.parseLong(project)));
		} else {
			u.setProject(null);
		}
		dao.insert(u);
		return new RedirectView("list");
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	private RedirectView edit(Long id, String name, String typeTeam,
			@RequestParam(name = "organization") String organization, @RequestParam(name = "project") String project,
			HttpServletRequest request) {
		Team u = new Team();
		u.setId(id);
		u.setName(name);
		u.setTypeTeam(typeTeam);
		Organisation o = organisationDAO.findById(Long.parseLong(organization));
		// System.out.println(o.toString());
		u.setOrganisation(o);
		if ("".equals(project) == false) {
			u.setProject(prjectDAO.findById(Long.parseLong(project)));
		} else {
			u.setProject(null);
		}
		dao.update(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("teamsRech") != null) {
			session.removeAttribute("teamsRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	private RedirectView Delete(long id, HttpServletRequest request) {
		Team u = dao.findById(id);
		dao.supprimer(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("teamsRech") != null) {
			session.removeAttribute("teamsRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "rech", method = RequestMethod.GET)
	private RedirectView Recherche(String table_search, HttpServletRequest request, HttpServletResponse response) {
		List<Team> teams = new ArrayList<Team>();
		teams = dao.recherche(table_search);
		for (Team team : teams) {
			System.out.println("+++" + team.toString());
		}
		HttpSession se = request.getSession();
		se.setAttribute("teamsRech", teams);
		return new RedirectView("list");
	}

	@RequestMapping(value = "backTolist")
	private RedirectView backTolist(HttpServletRequest request) {
		// recuperation des variable
		HttpSession session = request.getSession();
		if (session.getAttribute("teamsRech") != null) {
			session.removeAttribute("teamsRech");
		}
		return new RedirectView("list");
	}

}