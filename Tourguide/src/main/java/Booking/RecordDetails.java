package Booking;

public class RecordDetails {
	
	private String language;
	private int tourid;
	private int bookingid;
	
	public RecordDetails(String language,int tourid,int bookingid) {
		this.language=language;
		this.tourid=tourid;
		this.bookingid=bookingid;
	}


	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public int getTourid() {
		return tourid;
	}

	public void setTourid(int tourid) {
		this.tourid = tourid;
	}

	public int getBookingid() {
		return bookingid;
	}

	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	
	
}

	