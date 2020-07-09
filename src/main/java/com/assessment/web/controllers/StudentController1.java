package com.assessment.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.Student1;

@Controller
@RequestMapping("/student")
public class StudentController1 {

	@RequestMapping("/showForm")
	public String showForm(Model theModel) {

		Student1 theStudent = new Student1();
		theModel.addAttribute("student", theStudent);

		return "student-form";
	}

	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student1 theStudent) {

		// log

		System.out.println("theStudent:" + theStudent.getName() + " " + theStudent.getEmail());

		return "confirmation-page";
	}

	@GetMapping("/loginsuccess")
	public ModelAndView loginsuccess(@RequestParam("name") String name, @RequestParam("email") String email) {
		ModelAndView mav = new ModelAndView("login_success");
		
		mav.addObject("name", name);
		mav.addObject("email", email);
		return mav;
	}
	
	@RequestMapping("/fbLogin")
	public String fbLogin() {
		return "fblogin";
		
	}

}
