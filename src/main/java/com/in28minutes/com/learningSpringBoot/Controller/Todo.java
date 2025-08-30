package com.in28minutes.com.learningSpringBoot.Controller;

import java.time.LocalDate;

public class Todo {

	
	private long ID;
	private String username;
	private String Description;
	private LocalDate targetDate;
	private boolean done;
	public Todo(long iD, String username, String description, LocalDate targetDate, boolean done) {
		super();
		ID = iD;
		this.username = username;
		Description = description;
		this.targetDate = targetDate;
		this.done = done;
	}
	@Override
	public String toString() {
		return "Todo [ID=" + ID + ", username=" + username + ", Description=" + Description + ", targetDate="
				+ targetDate + ", done=" + done + "]";
	}
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public LocalDate getTargetDate() {
		return targetDate;
	}
	public void setTargetDate(LocalDate targetDate) {
		this.targetDate = targetDate;
	}
	public boolean isDone() {
		return done;
	}
	public void setDone(boolean done) {
		this.done = done;
	}

}
