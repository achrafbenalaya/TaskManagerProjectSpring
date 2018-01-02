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
import org.springframework.web.servlet.view.RedirectView;

import tn.iit.task.dao.ProjectDAO;
import tn.iit.task.dao.UserDAO;
import tn.iit.task.entites.Project;
import tn.iit.task.entites.User;
import tn.iit.task.utils.Utils;

@Controller
@RequestMapping("admin/project")
public class ProjectController {

	@Autowired
	ProjectDAO dao;

	@Autowired
	UserDAO udao;

	public String getUserAutentifiedLogin() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
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
		// return "formProjet";
		return "AddnewProject";
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
		Project ProjectCurrent = dao.findById(id);
		model.addAttribute("oneProject", ProjectCurrent);
		// return "updateformProjet";
		return "UpdateFormProjects";
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
		List<Project> Projects2 = dao.getAll();
		model.addAttribute("projectArray", Projects2);
		// return "listProjet";
		return "ListProjects";
	}

	@RequestMapping(value = "addProject", method = RequestMethod.POST)
	private RedirectView add(String nameProject, String dateDebut, String dateFin, String type, String description)
			throws ParseException {
		Project u = new Project();
		u.setNameProject(nameProject);
		// System.out.println("date debut : " + dateDebut + "\ndate fin :" +
		// dateFin);
		// System.out.println(dateDebut.getClass().getTypeName());
		// System.out.println(dateFin.getClass().getTypeName());
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date dateD = format.parse(dateDebut);
		Date dateF = format.parse(dateFin);
		u.setDateDebut(dateD);
		u.setDateFin(dateF);
		u.setType(type);
		u.setDescription(description);
		dao.insert(u);
		return new RedirectView("list");
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	private RedirectView edit(Long id, String nameProject, String dateDebut, String dateFin, String type,
			String description, HttpServletRequest request) throws ParseException {
		Project u = new Project();
		u.setId(id);
		u.setNameProject(nameProject);
		System.out.println("date debut :" + dateDebut + "date fin:" + dateFin);
		Date dateD = Utils.convertor(dateDebut);
		Date dateF = Utils.convertor(dateFin);
		// System.out.println(dateD.toString());
		// System.out.println(dateF.toString());
		u.setDateDebut(Utils.StringToDate(dateDebut));
		u.setDateFin(Utils.StringToDate(dateFin));
		u.setType(type);
		u.setDescription(description);
		dao.update(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("projectsRech") != null) {
			session.removeAttribute("projectsRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	private RedirectView Delete(long id, HttpServletRequest request) {
		Project u = dao.findById(id);
		dao.supprimer(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("projectsRech") != null) {
			session.removeAttribute("projectsRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "rech", method = RequestMethod.GET)
	private RedirectView Recherche(String table_search, HttpServletRequest request, HttpServletResponse response) {
		List<Project> projects = new ArrayList<Project>();
		projects = dao.recherche(table_search);
		HttpSession se = request.getSession();
		se.setAttribute("projectsRech", projects);
		return new RedirectView("list");
	}

	@RequestMapping(value = "backTolist")
	private RedirectView backTolist(HttpServletRequest request) {
		// recuperation des variable
		HttpSession session = request.getSession();
		if (session.getAttribute("projectsRech") != null) {
			session.removeAttribute("projectsRech");
		}
		return new RedirectView("list");
	}

}
