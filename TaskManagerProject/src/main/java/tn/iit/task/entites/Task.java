package tn.iit.task.entites;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nametask;
	private String progress;
	private String comments;
	private String description;
	private Date dateDebut;
	private Date dueDate;
	private Date dateFin;
	private int priority;

	@ManyToOne
	@JoinColumn(name = "id_state")
	private State state;

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNametask() {
		return nametask;
	}

	public void setNametask(String nametask) {
		this.nametask = nametask;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	@Override
	public String toString() {
		if (state == null) {
			return "Task [id=" + id + ", nametask=" + nametask + ", progress=" + progress + ", comments=" + comments
					+ ", description=" + description + ", dateDebut=" + dateDebut + ", dueDate=" + dueDate
					+ ", dateFin=" + dateFin + ", priority=" + priority + "]" + "\nno state";
		} else {
			return "Task [id=" + id + ", nametask=" + nametask + ", progress=" + progress + ", comments=" + comments
					+ ", description=" + description + ", dateDebut=" + dateDebut + ", dueDate=" + dueDate
					+ ", dateFin=" + dateFin + ", priority=" + priority + "]" + "\nstate" + state.toString();
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
		Task other = (Task) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
