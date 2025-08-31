package com.in28minutes.com.learningSpringBoot.Controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;


@Service
public class ToDoService {

	private static List<Todo> todos =new ArrayList<>();
	
	private static int todosCount=3;
	static {
		todos.add(new Todo(1,"in28minutes","learn aws",LocalDate.now().plusYears(1),false));
		todos.add(new Todo(1,"in28minutes","learn devops",LocalDate.now().plusYears(2),false));
		todos.add(new Todo(1,"in28minutes","learn full stack development",LocalDate.now().plusYears(3),false));
	}
	
	public List<Todo> findByUserName(String userName) {
		return todos;
	}
	
	public void addToDo(long ID, String name , String description , LocalDate target , boolean done ) {
		todos.add(new Todo(ID,name , description ,target,done));
	}
}
