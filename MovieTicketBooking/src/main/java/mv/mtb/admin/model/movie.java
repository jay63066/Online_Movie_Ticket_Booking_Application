package mv.mtb.admin.model;

public class movie {

	private int id;
	private String name;
	private String director;
	private String releasedate;
	private String casts;
	private String description;
	private String poster;
	private String duration;
	private String trailerlink;
	private int categoryID;
	
	public movie() {
		
	}

	public movie(int id, String name, String director, String releasedate, String casts, String description,
			String poster, String duration, String trailerlink, int category) {
		this.id = id;
		this.name = name;
		this.director = director;
		this.releasedate = releasedate;
		this.casts = casts;
		this.description = description;
		this.poster = poster;
		this.duration = duration;
		this.trailerlink = trailerlink;
		this.categoryID = category;
	}

	public movie(String name, String director, String releasedate, String casts, String description, String poster,
			String duration, String trailerlink, int category) {
		this.name = name;
		this.director = director;
		this.releasedate = releasedate;
		this.casts = casts;
		this.description = description;
		this.poster = poster;
		this.duration = duration;
		this.trailerlink = trailerlink;
		this.categoryID = category;
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

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getReleasedate() {
		return releasedate;
	}

	public void setReleasedate(String releasedate) {
		this.releasedate = releasedate;
	}

	public String getCasts() {
		return casts;
	}

	public void setCasts(String casts) {
		this.casts = casts;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getTrailerlink() {
		return trailerlink;
	}

	public void setTrailerlink(String trailerlink) {
		this.trailerlink = trailerlink;
	}

	public int getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(int category) {
		this.categoryID = category;
	}
	
	
	
	
}
