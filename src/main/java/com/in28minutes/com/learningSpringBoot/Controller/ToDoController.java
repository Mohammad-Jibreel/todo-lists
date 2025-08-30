package com.in28minutes.com.learningSpringBoot.Controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
public class ToDoController {

	private ToDoService ToDoService ;
	public ToDoController(com.in28minutes.com.learningSpringBoot.Controller.ToDoService toDoService) {
		super();
		ToDoService = toDoService;
	}
	@RequestMapping(value="list-todos",method=RequestMethod.GET) 
	public String listAllTodos(ModelMap model) {
		List<Todo> todos=ToDoService.findByUserName("in28minutes");
		model.addAttribute("todosList", todos);
		return "listTodos";
	}
}
