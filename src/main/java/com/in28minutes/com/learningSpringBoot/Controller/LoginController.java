package com.in28minutes.com.learningSpringBoot.Controller;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@Controller
@SessionAttributes("name")

class LoginController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private static String USER_NAME="mohammad";
	private static String PASSWORD="password123";

    @RequestMapping("login")
    public String gotoLoginPage(@RequestParam String name , ModelMap model) {
    	model.addAttribute("name",name);
    	logger.debug("Debug message");
    	logger.info("Info message");
    	logger.warn("Warning message");
    	logger.error("Error message");
    	
        return "login"; // This will resolve to /WEB-INF/jsp/login.jsp (if view resolver is set)
    }
    
    @RequestMapping(value="/welcome",method=RequestMethod.POST)
    public String goToWelcomePage(@RequestParam String name , @RequestParam String password,ModelMap model) {
    	if(name.equals(USER_NAME) && password.equals(PASSWORD)) {
        	model.put("username", name);
        	model.put("password", password);

    		return "welcome";
    	}
    	model.put("errorMessage","Invalid username or password");

    	return "login";
    	
    }
    
    
   
}

