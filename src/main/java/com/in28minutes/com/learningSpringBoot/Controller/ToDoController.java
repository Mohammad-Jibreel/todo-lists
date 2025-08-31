package com.in28minutes.com.learningSpringBoot.Controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("name")
	
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
	
	@RequestMapping(value="add-todo",method=RequestMethod.GET) 
	public String addToDo(ModelMap model) {
		String username=(String) model.getAttribute("name");
		Todo todo=new Todo(0,username,"",LocalDate.now().plusYears(1),false);
		model.put("todo", todo);
		return "addToDo";
	}
	
	@RequestMapping(value="saveToDo",method=RequestMethod.POST) 
	public String saveToDoList(ModelMap model,@Valid Todo todo , BindingResult result ) {
		
		if(result.hasErrors()) {
		return "todo";	
		}
		else {
		String username=(String) model.getAttribute("name");
		ToDoService.addToDo(todo.getId(), username, todo.getDescription(), LocalDate.now().plusYears(1), false);
		return "redirect:list-todos";
	}
	}
}
