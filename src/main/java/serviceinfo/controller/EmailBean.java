package serviceinfo.controller;

public class EmailBean {
	private String subject;
	private String content;
	private String receiver;
	private String contactPoint;
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	
	public String getContactPoint() {
		return contactPoint;
	}
	public void setContactPoint(String contactPoint) {
		this.contactPoint = contactPoint;
	}
}
