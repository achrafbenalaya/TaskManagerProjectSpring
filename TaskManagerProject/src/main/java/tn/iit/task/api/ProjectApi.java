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

import tn.iit.task.dao.ProjectDAO;
import tn.iit.task.entites.Project;

@Controller
@RequestMapping("api/project")
public class ProjectApi {

	@Autowired
	ProjectDAO dao;

	@RequestMapping(value = "/get/{id}", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	private Project findOne(@PathVariable Long id) {
		try {
			Project a = dao.findById(id); // System.out.println(a.toString());
			return a;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@RequestMapping(value = "/all", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	private List<Project> findAll() {
		try {
			List<Project> all = dao.getAll(); // System.out.println(a.toString());
			return all;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@PostMapping(value = "/add", produces = "application/json; charset=utf-8")
	@ResponseBody
	private void add(@RequestBody Project project) {
		try {
			dao.insert(project);
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@PutMapping(value = "/edit/{id}", produces = "application/json; charset=utf-8")
	@ResponseBody
	private void edit(@PathVariable("id") Long id, @RequestBody Project project) {
		try {
			project.setId(id);
			dao.update(project);
			return;
		} catch (Exception e) {
			e.printStackTrace();
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
		}
	}

}
