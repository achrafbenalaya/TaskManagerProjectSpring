package tn.iit.task.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tn.iit.task.dao.StateDAO;
import tn.iit.task.entites.State;

@Controller
@RequestMapping("api/state")
public class StateApi {

	@Autowired
	StateDAO dao;

	@RequestMapping(value = "/get/{id}", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	private State findOne(@PathVariable Long id) {
		try {
			State a = dao.findById(id); // System.out.println(a.toString());
			return a;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("***" + e.getMessage() + "***");
			return null;
		}
	}

	@RequestMapping(value = "/all", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	private List<State> findAll() {
		try {
			List<State> all = dao.getAll(); // System.out.println(a.toString());
			return all;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("***" + e.getMessage() + "***");
			return null;
		}
	}

	@PostMapping(value = "/add", produces = "application/json; charset=utf-8")
	@ResponseBody
	private void add(@RequestBody State State) {
		try {
			dao.insert(State);
			return;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("***" + e.getMessage() + "***");
		}
	}

	@PutMapping(value = "/edit/{id}", produces = "application/json; charset=utf-8")
	@ResponseBody
	private void edit(@PathVariable("id") Long id, @RequestBody State State) {
		try {
			State.setId(id);
			dao.update(State);
			return;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("***" + e.getMessage() + "***");
		}
	}

	@DeleteMapping(value = "/delete/{id}", produces = "application/json; charset=utf-8")
	@ResponseBody
	private void delete(@PathVariable("id") Long id) {
		try {
			dao.supprimer(dao.findById(id));
			return;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("***" + e.getMessage() + "***");
		}
	}

}
