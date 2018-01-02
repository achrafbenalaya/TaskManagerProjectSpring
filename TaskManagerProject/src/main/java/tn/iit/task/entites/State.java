package tn.iit.task.entites;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class State {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String namestate;
	private Date datecreation;

	@ManyToOne
	@JoinColumn(name = "id_prject")
	private Project project;

	// @OneToMany(mappedBy = "state")
	// private List<Task> tasks;

	// public List<Task> getTasks() {
	// return tasks;
	// }
	//
	// public void setTasks(List<Task> tasks) {
	// this.tasks = tasks;
	// }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNamestate() {
		return namestate;
	}

	public void setNamestate(String namestate) {
		this.namestate = namestate;
	}

	public Date getDatecreation() {
		return datecreation;
	}

	public void setDatecreation(Date datecreation) {
		this.datecreation = datecreation;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	@Override
	public String toString() {
		if (project == null) {
			return "State [id=" + id + ", namestate=" + namestate + ", Datecreation=" + datecreation + "\nno project"
					+ "]";
			/* +"\ntasks size "+tasks.size(); */
		} else {
			return "State [id=" + id + ", namestate=" + namestate + ", Datecreation=" + datecreation + "\nproject "
					+ project.toString() + "]";
			/* +"\ntasks size "+tasks.size(); */
		}

	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		State other = (State) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
