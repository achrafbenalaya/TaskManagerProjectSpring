package tn.iit.task.entites;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Project {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nameProject;
	// @DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateDebut;
	// @DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateFin;
	private String type;
	private String description;

	// @OneToMany(mappedBy = "project")
	// private List<State> states;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNameProject() {
		return nameProject;
	}

	public void setNameProject(String nameProject) {
		this.nameProject = nameProject;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	// public List<State> getStates() {
	// return states;
	// }
	//
	// public void setStates(List<State> states) {
	// this.states = states;
	// }

	@Override
	public String toString() {
		return "Project [id=" + id + ", nameProject=" + nameProject + ", DateDebut=" + dateDebut + ", DateFin="
				+ dateFin + ", Type=" + type + ", description=" + description + "]";
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
		Project other = (Project) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
