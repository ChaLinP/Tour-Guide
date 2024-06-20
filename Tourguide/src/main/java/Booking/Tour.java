package Booking;

public class Tour {
	 private int id;
	 private String name;
	 private String description;
	 private String availability;
	 private int maxV;
	 
	 public Tour(int id,String name,String description,String availability,int maxV) {
		 this.id=id;
		 this.name=name;
		 this.description=description;
		 this.availability=availability;
		 this.maxV=maxV;
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

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public int getMaxV() {
		return maxV;
	}

	public void setMaxV(int maxV) {
		this.maxV = maxV;
	}
	 
	 

}
