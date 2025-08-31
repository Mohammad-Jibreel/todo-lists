package com.in28minutes.com.learningSpringBoot.Controller;

import java.time.LocalDate;

import jakarta.validation.constraints.Size;

public class Todo {

    private long id;                 // lowercase
    private String username;
    @Size(min = 10 , message = "error ")
    private String description;      // lowercase
    private LocalDate targetDate;
    private boolean done;

    public Todo() {
        // لازم Constructor فارغ عشان Spring يعمل Binding
    }

    public Todo(long id, String username, String description, LocalDate targetDate, boolean done) {
        this.id = id;
        this.username = username;
        this.description = description;
        this.targetDate = targetDate;
        this.done = done;
    }

    @Override
    public String toString() {
        return "Todo [id=" + id + ", username=" + username + ", description=" + description +
               ", targetDate=" + targetDate + ", done=" + done + "]";
    }

    // Getters & Setters
    public long getId() { return id; }
    public void setId(long id) { this.id = id; }

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public LocalDate getTargetDate() { return targetDate; }
    public void setTargetDate(LocalDate targetDate) { this.targetDate = targetDate; }

    public boolean isDone() { return done; }
    public void setDone(boolean done) { this.done = done; }
}
