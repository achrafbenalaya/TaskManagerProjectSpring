package tn.iit.task.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import tn.iit.task.dao.UserDAO;
import tn.iit.task.entites.User;

@Controller
@RequestMapping("user")
public class RegisterController {

	@Autowired
	UserDAO dao;

	@RequestMapping(value = "show")
	public String showForm() {
		return "profil";
	}

	@RequestMapping(value = "reg", method = RequestMethod.POST)
	private RedirectView register(String firstname, String lastname, String login, String password, String typeuser,
			String email) {
		User u = new User();
		u.setFirstname(firstname);
		u.setLastname(lastname);
		u.setLogin(login);
		u.setPassword(password);
		u.setTypeuser("ROLE_ADMIN");
		u.setEmail(email);
		u.setTeam(null);
		dao.insert(u);
		return new RedirectView("../login.jsp");
	}

}
