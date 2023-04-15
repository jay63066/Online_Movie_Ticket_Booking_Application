package mv.mtb.admin.model;

public class category {
	private int id;
	private String name;
	private String description;
	
	public category() {
		
	}
	
	public category(int id, String name, String description) {
		this.id = id;
		this.name = name;
		this.description = description;
	}

	public category(String name, String description) {
		this.name = name;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "category [id=" + id + ", name=" + name + ", description=" + description + "]";
	}
	
	
	
}
