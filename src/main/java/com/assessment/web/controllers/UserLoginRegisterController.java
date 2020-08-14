package com.assessment.web.controllers;

import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.assessment.common.PropertyConfig;
import com.assessment.common.util.EmailGenericMessageThread;
import com.assessment.data.User;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.repositories.UserRepository;
import com.assessment.services.CompanyService;
import com.assessment.services.QuestionService;
import com.assessment.services.TestService;
import com.assessment.services.UserService;

@Controller
public class UserLoginRegisterController {

	@Autowired
	PropertyConfig propertyConfig;
	@Autowired
	UserService userService;
	@Autowired
	QuestionService questionService;
	@Autowired
	CompanyService companyService;
	@Autowired
	TestService testService;
	@Autowired
	UserRepository userRepo;
	@Autowired
	SkillTestRepository skilltestrepository;
	@Autowired
	UserPracticeController upc;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}

	@RequestMapping(value = "/loginRegister", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("user_login_register");
		User user = new User();
		mav.addObject("user", user);
		mav.addObject("message", "invalidate google login");
		return mav;
	}

	@RequestMapping(value = "/authenticateUser", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView authenticate(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user,@RequestParam(name="from",required=false)String testid) {
		User u = new User();
		ModelAndView mav = null;
		System.out.println("test.........    " + user);
		String emailId = user.getEmail();
		if(user.getEmail() != null && (user.getPassword() == null || user.getPassword() == "")) {
			user = userRepo.socialLogin(user.getEmail());
			String username[] = emailId.split("@");
			if(user == null)
			{
				u.setEmail(emailId);
				u.setCompanyId("e-assess");
				u.setCompanyName("e-assess");
				u.setPassword("A");
				u.setFirstName(username[0]);
				u.setOtp(0);
				u.setVerificationStatus("verified");
				user = u;
				userRepo.save(user);
				
				//open user table from the 
			}
		}
		else {
			user = userRepo.findByEmailAndPassword(user.getEmail(), user.getPassword());	
		}
		System.out.println("test2.........    " + user);
		if (user == null) {
			// navigate to exception page
			mav = new ModelAndView("redirect:/loginRegister");
			user = new User();
			mav.addObject("user", user);
			mav.addObject("message", "Invalid Credentials ");// later put it as label
			mav.addObject("msgtype", "Failure");
			return mav;
		} else {
			String v_status = user.getVerificationStatus();
			if(v_status!=null) {
				if(v_status.equalsIgnoreCase("verified")) {
					if(testid != null)
					{
						request.getSession().setAttribute("user", user);
						mav = new ModelAndView("redirect:/userpractice?testid="+testid);
					}
					else {
						mav = new ModelAndView("redirect:/user_profile_student_profile?email="+user.getEmail());
						request.getSession().setAttribute("user", user);
						System.out.println("test3.........    " + user);
						mav.addObject("userName", user.getFirstName());
					}
				}
				else {
					mav = new ModelAndView("redirect:/loginRegister");
					mav.addObject("email", user.getEmail());
					mav.addObject("message", "Otp not verified");// later put it as label
					mav.addObject("msgtype", "Failure");
				}
			}
			else {
				mav = new ModelAndView("redirect:/loginRegister");
				mav.addObject("email", user.getEmail());
				mav.addObject("message", "Otp not verified");// later put it as label
				mav.addObject("msgtype", "Failure");
			}
		}
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public Map<String,Object> registerUser(HttpServletRequest request, HttpServletResponse response,
			@RequestBody User u) {
		System.out.println(u.getEmail()+"\n"+u.getMobileNumber());
		
		User user1=userService.findByMobileNumberAndEmail(u.getMobileNumber(), u.getEmail());
		System.out.println("User1"+user1);
		
		Map<String,Object> map=new HashMap<>();
		System.out.println(u);

		User user =  null;
		try {
			user = userRepo.findByEmail(u.getEmail()).get();
		}
		catch(Exception e){
			user = null;
		}
		
		if(user != null) {
			map.put("msg","Invalid Email");
		}
		else {
			Random rndm_method = new Random();
			int otp=rndm_method.nextInt(1000000);
			request.getSession().setAttribute("user", u);
			u.setCompanyId("e-assess");
			u.setCompanyName("e-assess");
			u.setVerificationStatus("pending");
			u.setOtp(otp);
			userRepo.save(u);
			String message="Use this code for verification: "+otp;
			EmailGenericMessageThread client = new EmailGenericMessageThread(u.getEmail(),
					"OTP Verification", message, propertyConfig);
			Thread th = new Thread(client);
			th.start();
			System.out.println("Saved"+u);
			map.put("userName", u.getFirstName());
			map.put("email", u.getEmail());
			map.put("msg", "Your otp has been sent to "+u.getEmail());
					
		}
		return map;
	}
		
		
	@ResponseBody
	@RequestMapping(value = "/resendOTP", method = RequestMethod.POST)
	public String resendOTP(HttpServletRequest request, HttpServletResponse response,
	@RequestParam("email")String email ) {
		Random rndm_method = new Random();
		int otp=rndm_method.nextInt(1000000);
		User u = userRepo.findByEmail(email).get();
		u.setOtp(otp);
		u.setVerificationStatus("pending");
		userRepo.save(u);
		String message="Use this code for verification: "+otp;
		EmailGenericMessageThread client = new EmailGenericMessageThread(u.getEmail(),
				"OTP Verification", message, propertyConfig);
		Thread th = new Thread(client);
		th.start();
		
		return "Otp sent successfully";
	}

	
	@ResponseBody
	@RequestMapping(value = "/verifyOtp", method = RequestMethod.GET)
	public Map<String,Object> verifyOtp(@RequestParam("otp") int otp,@RequestParam("email") String email) {
		Map<String, Object> map=new HashMap<>();
		System.out.println("Otp:"+otp+"Email:"+email);
		User u=userRepo.findByOtpAndEmail(otp, email);
		if(u==null) {
			map.put("msg","Incorrect OTP");
		}else {
			map.put("msg","success");
			u.setVerificationStatus("verified");
			userRepo.save(u);
		}
		System.out.println("checked");
		return map;
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView userDashboard() {
		ModelAndView mav=new ModelAndView("userDashboard");
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public Map<String, Object> forgotPassword(HttpServletRequest request, HttpServletResponse response,@RequestParam("email") String email) {
		
		Map<String, Object> map=new HashMap<>();
		System.out.println("Email:"+email);
		
		Optional<User> optional = userService.findUserByEmail(email);
		
		System.out.println("Optional User"+optional);

		if (!optional.isPresent()) {
			map.put("errorMessage", "Incorrect Login Credentials");
		} else {
			// Generate random 36-character string token for reset password
			User user = optional.get();
			user.setResetToken(UUID.randomUUID().toString());
			Random rndm_method = new Random();
			int otp=rndm_method.nextInt(1000000);
			user.setOtp(otp);
			userService.saveUser(user);
			
			System.out.println("Reset token"+user.getResetToken());
			
			String message = "Password reset mail could not be sent for  " +email;
			
			//String mailBody="Hello "+email+","+"\n\nTo reset your password, click the link below:\n" + appUrl + "/reset?token=" + user.getResetToken()+"\n\nIf you did not ask to reset your password, please ignore this message."+" \nThank You.";
			
			String url = propertyConfig.getBaseUrl()+"/reset?token="+Base64.getEncoder() .encodeToString(Integer.toString(otp).getBytes())+"&uid="+Base64.getEncoder() .encodeToString(user.getEmail().getBytes());
			
			EmailGenericMessageThread client = new EmailGenericMessageThread(email, "EAssess-Password Reset Request",
					"To reset your password, click the link below:\n" +url,propertyConfig);

			Thread th = new Thread(client);
			th.start();

			System.out.println("Email details>>>>>>"+client);

			// Add success message to view
			map.put("successMessage", "A reset link has been sent to your registered Email.Please use it to reset your password.");
		}
		return map;
	}

	
	  @RequestMapping(method = RequestMethod.GET, value = "/resetPassword") 
	  public String index() { 
		  return "resources/html/resetPassword.html"; 
	}
	 
	
	// Display form to reset password
	@RequestMapping(value = "/reset", method = RequestMethod.GET)
	public ModelAndView displayResetPasswordPage(HttpServletRequest request, HttpServletResponse response, @RequestParam("token") String token, @RequestParam("uid") String email) {
		ModelAndView mav=new ModelAndView();
        Base64.Decoder decoder = Base64.getMimeDecoder();  
        String otp = new String(decoder.decode(token));  
        String userEmail=new String(decoder.decode(email));
		
		Optional<User> user = userService.findUserByEmail(userEmail);
		System.out.println("called:::;   "+user);
		
		if (user.get().getOtp()==Integer.parseInt(otp)) { // Token found in DB
		request.getSession().setAttribute("user", user.get());
			mav.addObject("resetToken", token);
			mav.setViewName("resetPassword");
		} else { // Token not found in DB
			mav.addObject("errorMessage", "Oops!  This is an invalid password reset link.");
			mav.setViewName("redirect:/loginRegister");
		}

		return mav;
	}

	
	@ResponseBody
	@RequestMapping(value = "/saveResetPassword", method = RequestMethod.GET)
	public Map<String, String> saveResetPassword(HttpServletRequest request,@RequestParam("pswd1") String pswd1) {
		
		Map<String,String> map=new HashMap<>();
	    User user=(User) request.getSession().getAttribute("user");
		  
	    user.setPassword(pswd1);
	    userService.saveUser(user);
	    map.put("msg", "Login Page will redirect to login in 3 seconds");
	    return map;
	    
	}
	

//	@GetMapping("/loginsuccess")
//	public ModelAndView loginsuccess(@RequestParam("name") String name, @RequestParam("email") String email) {
//		ModelAndView mav = new ModelAndView();
//		
//		User user=new User();
//		user.setEmail(email);
//		user.setFirstName(name);
//		userRepo.save(user);
//		
//		mav.setViewName("redirect:/practiceCode");
//		return mav;
//	}

	@GetMapping("/signoffUser")
	public ModelAndView signoffUser(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().invalidate();
		User user = new User();
		ModelAndView mav = new ModelAndView("user_login_register");
		mav.addObject("user", user);
		return mav;
	}
	
	@GetMapping("/loginsuccess")
	public ModelAndView loginsuccess(HttpServletRequest request,@RequestParam("name") String name, @RequestParam("email") String email) {
		ModelAndView mav = new ModelAndView("practiceCode");
		User user=(User) request.getSession().getAttribute("user");
		/*
		 * User user=new User(); user.setEmail(email); user.setFirstName(name);
		 * userRepo.save(user);
		 */
		
		
		//mav.setViewName("redirect:/practiceCode");

		
		mav.addObject("name", name);
		mav.addObject("email", email);
		return mav;
	}

}
