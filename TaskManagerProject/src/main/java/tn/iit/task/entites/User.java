package tn.iit.task.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
// @Table(name = "user", uniqueConstraints = @UniqueConstraint(name =
// "email_user_uc", columnNames = "email"))
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(unique = true)
	private String login;
	private String password;
	private String firstname;
	private String lastname;
	private String typeuser;
	private String email;

	@ManyToOne
	@JoinColumn(name = "id_team")
	private Team team;

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getTypeuser() {
		return typeuser;
	}

	public void setTypeuser(String typeuser) {
		this.typeuser = typeuser;
	}

	@Override
	public String toString() {
		if (team == null) {
			return "User [id=" + id + ", login=" + login + ", password=" + password + ", firstname=" + firstname
					+ ", lastname=" + lastname + ", typeuser=" + typeuser + ", email=" + email + "\nNo team ";
		} else {

			return "User [id=" + id + ", login=" + login + ", password=" + password + ", firstname=" + firstname
					+ ", lastname=" + lastname + ", typeuser=" + typeuser + ", email=" + email + "\nIn this team :"
					+ team.toString() + "]";
		}
	}

	public String toStringSimple() {
		return "User : id=" + id + ", login=" + login + ", password=" + password + ", firstname=" + firstname
				+ ", lastname=" + lastname + ", typeuser=" + typeuser + ", email=" + email;
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
		User other = (User) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
