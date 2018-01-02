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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import tn.iit.task.dao.OrganisationDAO;
import tn.iit.task.dao.UserDAO;
import tn.iit.task.entites.Organisation;
import tn.iit.task.entites.User;
import tn.iit.task.utils.Utils;

@Controller
@RequestMapping("admin/organisation")
public class OrganisationController {

	@Autowired
	OrganisationDAO dao;

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
		return "AddnewOrganisation";
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
		Organisation OrganisationCurrent = dao.findById(id);
		model.addAttribute("oneOrganisation", OrganisationCurrent);
		return "UpdateFormOrganisations";
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
		List<Organisation> Organisation2 = dao.getAll();
		model.addAttribute("OrganisationArray", Organisation2);
		return "ListOrganisations";
	}

	@RequestMapping(value = "addOrganisation", method = RequestMethod.POST)
	private RedirectView add(String name, String datecreation, String type) throws ParseException {
		System.out.println("ME." + this.getClass().toString() + ".addOrganisation" + datecreation + "****");
		Organisation u = new Organisation();
		u.setName(name);
		u.setDatecreation(Utils.StringToDate(datecreation));
		u.setType(type);
		dao.insert(u);
		return new RedirectView("list");
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	private RedirectView edit(Long id, String name, String datecreation, @RequestParam(name = "type") String type,
			HttpServletRequest request) throws ParseException {
		System.out.println("ME." + this.getClass().toString() + ".editOrg" + datecreation + "****");
		Organisation u = new Organisation();
		u.setId(id);
		u.setName(name);
		u.setDatecreation(Utils.StringToDate(datecreation));
		System.out.println("ME." + this.getClass().toString() + ".editOrganisation " + type + "****");
		u.setType(type);
		dao.update(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("organisationsRech") != null) {
			session.removeAttribute("organisationsRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	private RedirectView Delete(long id, HttpServletRequest request) {
		Organisation u = dao.findById(id);
		dao.supprimer(u);
		HttpSession session = request.getSession();
		if (session.getAttribute("organisationsRech") != null) {
			session.removeAttribute("organisationsRech");
		}
		return new RedirectView("list");
	}

	@RequestMapping(value = "rech", method = RequestMethod.GET)
	private RedirectView Recherche(String table_search, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		List<Organisation> organisations = new ArrayList<Organisation>();
		organisations = dao.recherche(table_search);
		if (organisations != null) {
			for (Organisation organisation : organisations) {
				System.out.println("******" + organisation.toString() + "******");
			}
			System.out.println("we found " + organisations.size() + " organisation.");
		} else
			System.out.println("no result!!!");
		System.out.println(organisations.size() + " user mis dans la session");
		HttpSession se = request.getSession();
		se.setAttribute("organisationsRech", organisations);
		return new RedirectView("list");
	}

	@RequestMapping(value = "backTolist")
	private RedirectView backTolist(HttpServletRequest request) {
		// recuperation des variable
		HttpSession session = request.getSession();
		if (session.getAttribute("organisationsRech") != null) {
			session.removeAttribute("organisationsRech");
		}
		return new RedirectView("list");
	}

}
