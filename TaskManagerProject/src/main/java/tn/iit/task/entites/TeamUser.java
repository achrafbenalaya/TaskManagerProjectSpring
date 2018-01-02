package tn.iit.task.entites;

public class TeamUser {
	private Long id;
	private Long id_team;
	private Long id_user;

	@Override
	public String toString() {
		return "TeamUser [id=" + id + ", id_team=" + id_team + ", id_user=" + id_user + "]";
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
		TeamUser other = (TeamUser) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public Long getId_team() {
		return id_team;
	}

	public void setId_team(Long id_team) {
		this.id_team = id_team;
	}

	public Long getId_user() {
		return id_user;
	}

	public void setId_user(Long id_user) {
		this.id_user = id_user;
	}

}
