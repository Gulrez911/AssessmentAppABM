package com.assessment.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.OnetLogin;
import com.assessment.services.OnetLoginService;

@Controller
@SessionAttributes("onetLogin")
public class OnetLoginController {
	@Autowired
	private OnetLoginService onetLoginService;
	

	@GetMapping("/showOnetForm")
	public String showForm(HttpServletRequest request, HttpServletResponse response, Model model) {
		OnetLogin onetLogin = new OnetLogin();
		model.addAttribute("onetLogin", onetLogin);
		return "index_onet";
	}

	@RequestMapping(value = "onetLogin", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetLogin") OnetLogin onetLogin) {
		ModelAndView mav = new ModelAndView("onet_index");
		onetLoginService.save(onetLogin);
		return mav;
	}
	@RequestMapping(value = "onetHome", method = RequestMethod.GET)
	public ModelAndView onetHome(@RequestParam(value = "name", required = false) Integer name,HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetLogin") OnetLogin onetLogin) {
		ModelAndView mav = new ModelAndView("onet_index");
		System.out.println("onetHome..." + name);
		mav.addObject("ex", name);
		return mav;
	}
}
