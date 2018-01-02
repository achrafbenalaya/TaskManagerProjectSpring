package tn.iit.task.entites;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Team {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String typeTeam;

	@ManyToOne
	@JoinColumn(name = "Id_Organisation")
	private Organisation organisation;

	@ManyToOne
	@JoinColumn(name = "Id_Project")
	private Project project;

	// @OneToMany(mappedBy = "team")
	// private List<User> users;

	// public List<User> getUsers() {
	// return users;
	// }
	//
	// public void setUsers(List<User> users) {
	// this.users = users;
	// }

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Organisation getOrganisation() {
		return organisation;
	}

	public void setOrganisation(Organisation organisation) {
		this.organisation = organisation;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTypeTeam() {
		return typeTeam;
	}

	public void setTypeTeam(String typeTeam) {
		this.typeTeam = typeTeam;
	}

	@Override
	public String toString() {
		if (project != null && organisation != null) {
			return "Team [id=" + id + ", name=" + name + ", typeTeam=" + typeTeam + ",\norganisation="
					+ organisation.toString() + ",\nproject=" + project.toString() + "]";
		} else if (organisation != null) {
			return "Team [id=" + id + ", name=" + name + ", typeTeam=" + typeTeam + ",\norganisation"
					+ organisation.toString() + "\nno project]";
		} else if (project != null) {
			return "Team [id=" + id + ", name=" + name + ", typeTeam=" + typeTeam + ",\nno organisation" + "\n project="
					+ project.toString() + "]";
		} else {
			return "Team [id=" + id + ", name=" + name + ", typeTeam=" + typeTeam + ",\nno organisation"
					+ "\nno project=";
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
		Team other = (Team) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
