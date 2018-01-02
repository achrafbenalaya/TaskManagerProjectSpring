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

import tn.iit.task.dao.OrganisationDAO;
import tn.iit.task.dao.StateDAO;
import tn.iit.task.dao.TaskDAO;
import tn.iit.task.dao.UserDAO;
import tn.iit.task.entites.State;
import tn.iit.task.entites.Task;
import tn.iit.task.entites.User;

@Controller
@RequestMapping("admin/task")
public class TaskController {
	@Autowired
	private TaskDAO dao;
	@Autowired
	private StateDAO statedao;
	@Autowired
	private OrganisationDAO dd;
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
		model.addAttribute("StatenArray", statedao.getAll());
		model.addAttribute("OrganisationArray", dd.getAll());
		return "AddNewTask";
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
		Task TaskCurrent = dao.findById(id);
		model.addAttribute("oneTask", TaskCurrent);
		model.addAttribute("states", statedao.getAll());
		model.addAttribute("StatenArray", statedao.getAll());
		return "UpdateFormTasks";
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
		List<Task> Task2 = dao.getAll();
		model.addAttribute("TaskArray", Task2);
		// model.addAttribute("states", statedao.getAll());
		return "ListOfTasks";
	}

	/* @RequestParam(name="nameTask") */
	@RequestMapping(value = "addTask", method = RequestMethod.POST)
	private RedirectView add(String nametask, String progress, String comments, String description, String dateDebut,
			String dueDate, String dateFin, int priority, @RequestParam(name = "state") String state)
			throws ParseException {
		Task u = new Task();
		u.setNametask(nametask);
		u.setProgress(progress);
		u.setComments(comments);
		u.setDescription(description);
		u.setPriority(priority);
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date dateD = format.parse(dateDebut);
		Date dateE = format.parse(dueDate);
		Date dateF = format.parse(dateFin);
		u.setDateDebut(dateD);
		u.setDueDate(dateE);
		u.setDateFin(dateF);
		u.setDescription(description);
		State newState = statedao.findById(Long.parseLong(state));
		u.setState(newState);
		dao.insert(u);
		return new RedirectView("list");
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	private RedirectView edit(Long id, String nametask, String progress, String comments, String description,
			String dateDebut, String dueDate, String dateFin, int priority, @RequestParam(name = "state") String state,
			HttpServletRequest request) throws ParseException {
		Task u = new Task();
		u.setId(id);
		u.setNametask(nametask);
		u.setProgress(progress);
		u.setComments(comments);
		u.setDescription(description);
		u.setPriority(priority);
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date dateD = format.parse(dateDebut);
		Date dateE = format.parse(dueDate);
		Date dateF = format.parse(dateFin);
		u.setDateDebut(dateD);
		u.setDueDate(dateE);
		u.setDateFin(dateF);
		u.setDescription(description);
		u.setState(statedao.findById(Long.parseLong(state)));
		dao.update(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("tasksRech") != null) {
			session.removeAttribute("tasksRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	private RedirectView Delete(long id, HttpServletRequest request) {
		Task u = dao.findById(id);
		dao.supprimer(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("tasksRech") != null) {
			session.removeAttribute("tasksRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "rech", method = RequestMethod.GET)
	private RedirectView Recherche(String table_search, HttpServletRequest request, HttpServletResponse response) {
		List<Task> tasks = new ArrayList<Task>();
		tasks = dao.recherche(table_search);
		for (Task task : tasks) {
			System.out.println("+++" + task.toString());
		}
		HttpSession se = request.getSession();
		se.setAttribute("tasksRech", tasks);
		System.out.println(tasks.size() + " mis dans la session **TaskController");
		return new RedirectView("list");
	}

	@RequestMapping(value = "backTolist")
	private RedirectView backTolist(HttpServletRequest request) {
		// recuperation des variable
		HttpSession session = request.getSession();
		if (session.getAttribute("tasksRech") != null) {
			session.removeAttribute("tasksRech");
		}
		return new RedirectView("list");
	}

}
