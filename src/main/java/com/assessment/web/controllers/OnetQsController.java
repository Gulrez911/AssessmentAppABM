package com.assessment.web.controllers;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.OnetLogin;
import com.assessment.data.OnetQsAllResult;
import com.assessment.data.OnetQuestions;
import com.assessment.data.OnetResults;
import com.assessment.data.OnetString;
import com.assessment.data.Result;
import com.assessment.data.User;
import com.assessment.services.OnetQsResultService;
import com.assessment.services.OnetQsService;
import com.assessment.services.OnetstringService;
import com.assessment.web.dto.onetQsDto;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

@Controller
@SessionAttributes("onetLogin")
public class OnetQsController {

	@Autowired
	private OnetQsService onetQsService;

	@Autowired
	OnetQsResultService onetqsresultservice;

	@Autowired
	OnetstringService onerstringservice;

	Logger logger = LoggerFactory.getLogger(OnetQsController.class);

	@RequestMapping(value = "/OnetPage", method = RequestMethod.GET)
	public ModelAndView onetpage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayqs2");
//		User user = (User) request.getSession().getAttribute("user");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");

		/*
		 * String ans=""; request.getSession().setAttribute("ans",ans);
		 */
		onetQsDto qd = new onetQsDto();
		qd.setNext(0);
		qd.setFirst(true);
		qd.setPage(1);
		List<OnetQuestions> oq = onetQsService.showOnetQuestions();

		OnetQuestions oo = oq.get(0);
		OnetQuestions o1 = oq.get(1);
		OnetQuestions o2 = oq.get(2);
		OnetQuestions o3 = oq.get(3);
		OnetQuestions o4 = oq.get(4);
		OnetQuestions o5 = oq.get(5);
		OnetQuestions o6 = oq.get(6);
		OnetQuestions o7 = oq.get(7);
		OnetQuestions o8 = oq.get(8);
		OnetQuestions o9 = oq.get(9);
		OnetQuestions ten = oq.get(10);
		OnetQuestions eleven = oq.get(11);
		request.getSession().setAttribute("pg", 1);
		double x = Math.random();
		request.getSession().setAttribute("rad", x);
		mav.addObject("oo", oo);
		mav.addObject("o1", o1);
		mav.addObject("o2", o2);
		mav.addObject("o3", o3);
		mav.addObject("o4", o4);
		mav.addObject("o5", o5);
		mav.addObject("o6", o6);
		mav.addObject("o7", o7);
		mav.addObject("o8", o8);
		mav.addObject("o9", o9);
		mav.addObject("ten", ten);
		mav.addObject("eleven", eleven);
		String user = onetLogin.getEmail();
		mav.addObject("user", user);
		mav.addObject("qd", qd);
		int num = 1;
		mav.addObject("num", num);
		return mav;

	}

	@RequestMapping(value = "/nextOnetQuestion", method = RequestMethod.POST)
	public ModelAndView nextOnetQuestion(@RequestParam(required = false) int para,
			@RequestParam(required = false) int Page, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetQsdto") onetQsDto onetQsdto) throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayqs2");
//		User user = (User) request.getSession().getAttribute("user");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");
		/*
		 * String ans1=(String)request.getSession().getAttribute("ans");
		 * ans1=ans1.concat(ans);
		 */

		setAns(onetQsdto, request);
		int num = 1;
		if (Page == 1) {
			num = Page;
		} else {
			num = para + 1;
		}

		mav.addObject("num", num);
		// answer=answer+ans;
		// System.out.println(answer+" added");

		List<OnetQuestions> oq = onetQsService.showOnetQuestions();
		List<OnetQuestions> os = new ArrayList<>();

		/*
		 * int opara=para;
		 * 
		 * int a=para+11; while(para<=a) { OnetQuestions oo=oq.get(para); os.add(oo);
		 * para++;
		 * 
		 * }
		 */

		int opara = para;
		System.out.println("idhar: " + opara);
		// int a=para+11;

		OnetQuestions oo = oq.get(para++);
		OnetQuestions o1 = oq.get(para++);
		OnetQuestions o2 = oq.get(para++);
		OnetQuestions o3 = oq.get(para++);
		OnetQuestions o4 = oq.get(para++);
		OnetQuestions o5 = oq.get(para++);
		OnetQuestions o6 = oq.get(para++);
		OnetQuestions o7 = oq.get(para++);
		OnetQuestions o8 = oq.get(para++);
		OnetQuestions o9 = oq.get(para++);
		OnetQuestions ten = oq.get(para++);
		OnetQuestions eleven = oq.get(para++);

		mav.addObject("oo", oo);
		mav.addObject("o1", o1);
		mav.addObject("o2", o2);
		mav.addObject("o3", o3);
		mav.addObject("o4", o4);
		mav.addObject("o5", o5);
		mav.addObject("o6", o6);
		mav.addObject("o7", o7);
		mav.addObject("o8", o8);
		mav.addObject("o9", o9);
		mav.addObject("ten", ten);
		mav.addObject("eleven", eleven);

		onetQsDto qd = new onetQsDto();
		qd.setNext(opara);
		qd.setFirst(false);
		int c = Page + 1;
		qd.setPage(Page);
		if (para == 59) {
			qd.setLast(true);
		}
		String user = onetLogin.getEmail();

		mav.addObject("onetq", os);
		mav.addObject("user", user);

		String rs = "";
		double rand = (double) request.getSession().getAttribute("rad");
		OnetString ls = onerstringservice.gellbypage(rand, Page);
		if (ls == null)
			rs = "000000000000";
		else
			rs = ls.getResult();

		System.out.println("anilgaudresult:" + rs);
		System.out.println("anilgaudindex:" + rs.charAt(0));
		onetQsDto ot1 = new onetQsDto();
		ot1.setOne1(Character.getNumericValue(rs.charAt(0)));
		ot1.setTwo1(Character.getNumericValue(rs.charAt(1)));
		ot1.setThree1(Character.getNumericValue(rs.charAt(2)));
		ot1.setFour1(Character.getNumericValue(rs.charAt(3)));
		ot1.setFive1(Character.getNumericValue(rs.charAt(4)));
		ot1.setSix1(Character.getNumericValue(rs.charAt(5)));
		ot1.setSeven1(Character.getNumericValue(rs.charAt(6)));
		ot1.setEight1(Character.getNumericValue(rs.charAt(7)));
		ot1.setNine1(Character.getNumericValue(rs.charAt(8)));
		ot1.setTen1(Character.getNumericValue(rs.charAt(9)));
		ot1.setEleven1(Character.getNumericValue(rs.charAt(10)));
		ot1.setTwelve1(Character.getNumericValue(rs.charAt(11)));
		System.out.println("Opara.... " + opara);
		if (opara == 48) {
			ot1.setLast(true);
		}
		if (opara == 0)
			ot1.setFirst(true);

		ot1.setNext(opara);
		// int c=Page - 1;
		System.out.println("anilpage=" + Page);
		ot1.setPage(Page);
		// mav.addObject("qd", qd);
		mav.addObject("qd", ot1);
		// request.getSession().setAttribute("pg", Page + 1);
		request.getSession().setAttribute("pg", Page);
		mav.addObject("num", num);
		return mav;

	}

	@RequestMapping(value = "/prevOnetQuestion", method = RequestMethod.POST)
	public ModelAndView prevOnetQuestion(@RequestParam(required = false) int para,
			@RequestParam(required = false) int Page, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetQsdto") onetQsDto onetQsdto) throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayqs2");
//		User user = (User) request.getSession().getAttribute("user");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");

		onetQsDto ot = (onetQsDto) request.getSession().getAttribute("onetQsdto");

		// request.getSession().setAttribute("pg", Page);
		setAns(onetQsdto, request);

		List<OnetQuestions> oq = onetQsService.showOnetQuestions();
		/*
		 * List<OnetQuestions> os= new ArrayList<>(); int opara=para;
		 * 
		 * int a=para+11; while(para<=a) { OnetQuestions oo=oq.get(para); os.add(oo);
		 * para++;
		 * 
		 * }
		 */
		int opara = para;
		// int a=para+11;
		int num = 1;
		if (Page == 1) {
			num = Page;
		} else {
			num = para + 1;
		}
		mav.addObject("num", num);
		OnetQuestions oo = oq.get(para++);
		OnetQuestions o1 = oq.get(para++);
		OnetQuestions o2 = oq.get(para++);
		OnetQuestions o3 = oq.get(para++);
		OnetQuestions o4 = oq.get(para++);
		OnetQuestions o5 = oq.get(para++);
		OnetQuestions o6 = oq.get(para++);
		OnetQuestions o7 = oq.get(para++);
		OnetQuestions o8 = oq.get(para++);
		OnetQuestions o9 = oq.get(para++);
		OnetQuestions ten = oq.get(para++);
		OnetQuestions eleven = oq.get(para++);

		mav.addObject("oo", oo);
		mav.addObject("o1", o1);
		mav.addObject("o2", o2);
		mav.addObject("o3", o3);
		mav.addObject("o4", o4);
		mav.addObject("o5", o5);
		mav.addObject("o6", o6);
		mav.addObject("o7", o7);
		mav.addObject("o8", o8);
		mav.addObject("o9", o9);
		mav.addObject("ten", ten);
		mav.addObject("eleven", eleven);

		/*
		 * onetQsDto qd = new onetQsDto(); qd.setNext(opara); qd.setPage(Page); //
		 * qd.setFirst(false); if (opara == 60) { qd.setLast(true); } if (opara == 0)
		 * qd.setFirst(true);
		 */
		if (opara == 60) {
			ot.setLast(true);
		}
		if (opara == 0)
			ot.setFirst(true);

		ot.setNext(opara);
		int c = Page - 1;
		System.out.println("anilpage=" + c);
		ot.setPage(Page);

		double rand = (double) request.getSession().getAttribute("rad");
		OnetString ls = onerstringservice.gellbypage(rand, Page);
		String rs = ls.getResult();
		System.out.println("anilgaudresult:" + rs);
		System.out.println("anilgaudindex:" + rs.charAt(0));
		onetQsDto ot1 = new onetQsDto();
		ot1.setOne1(Character.getNumericValue(rs.charAt(0)));
		ot1.setTwo1(Character.getNumericValue(rs.charAt(1)));
		ot1.setThree1(Character.getNumericValue(rs.charAt(2)));
		ot1.setFour1(Character.getNumericValue(rs.charAt(3)));
		ot1.setFive1(Character.getNumericValue(rs.charAt(4)));
		ot1.setSix1(Character.getNumericValue(rs.charAt(5)));
		ot1.setSeven1(Character.getNumericValue(rs.charAt(6)));
		ot1.setEight1(Character.getNumericValue(rs.charAt(7)));
		ot1.setNine1(Character.getNumericValue(rs.charAt(8)));
		ot1.setTen1(Character.getNumericValue(rs.charAt(9)));
		ot1.setEleven1(Character.getNumericValue(rs.charAt(10)));
		ot1.setTwelve1(Character.getNumericValue(rs.charAt(11)));
		if (opara == 60) {
			ot1.setLast(true);
		}
		if (opara == 0)
			ot1.setFirst(true);

		ot1.setNext(opara);
		// int c=Page - 1;
		System.out.println("anilpage=" + Page);
		ot1.setPage(Page);

		// mav.addObject("onetq",os);
		mav.addObject("user", onetLogin);
		// mav.addObject("qd",qd);
		mav.addObject("qd", ot1);
		// request.getSession().setAttribute("pg", Page - 1);
		request.getSession().setAttribute("pg", Page);

		return mav;
	}

	@RequestMapping(value = "/submitTest1", method = RequestMethod.POST)
	public ModelAndView OnetsubmitTest(@RequestParam(required = false) int para,
			@RequestParam(required = false) String ans, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetQsdto") onetQsDto onetQsdto) throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayresult2");

//		User user1 = (User) request.getSession().getAttribute("user");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");

		setAns(onetQsdto, request);
		String ans1 = (String) request.getSession().getAttribute("ans");
		System.out.println("submitAnswer " + ans1);
		/*
		 * String ans1=(String)request.getSession().getAttribute("ans");
		 * ans1=ans1.concat(ans); answer=answer+ans;
		 * System.out.println(answer+" added"); int c=0; for(int
		 * i=0;i<answer.length();i++) { char ch=answer.charAt(i); if(ch!=' ') c++; }
		 * System.out.println("total character "+c);
		 */

		double rand = (double) request.getSession().getAttribute("rad");
		List<OnetString> alldata = onerstringservice.getall(rand);
		String og = alldata.get(0).getResult() + alldata.get(1).getResult() + alldata.get(2).getResult()
				+ alldata.get(3).getResult() + alldata.get(4).getResult();
		System.out.println("original " + og);

//		String url = "https://services.onetcenter.org/ws/mnm/interestprofiler/results?answers="
//				+ URLEncoder.encode(og, "UTF-8");
		String url = "https://services.onetcenter.org/ws/mnm/interestprofiler/results?answers=553421321134342523523523254115342111351145453111231155343444";
		String name = "kgate";
		String password = "7252zku";
		String authString = name + ":" + password;

		/* String authStringEnc = new BASE64Encoder().encode(authString.getBytes()); */
		System.out.println("Base64 encoded auth string: " + authString);

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(url);
		ClientResponse resp = webResource.accept("application/json")
				.header("Authorization", "Basic a2dhdGU6NzI1MnprdQ== " + authString).get(ClientResponse.class);
		if (resp.getStatus() != 200) {
			System.err.println("Unable to connect to the server");
		}
		String output = (String) resp.getEntity(String.class);
		// System.out.println("response: " + output);

		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
		objectMapper.disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
		OnetResults or = objectMapper.readValue(output, OnetResults.class);
		System.out.println("onetresult " + or);

		List<Result> rs = Arrays.asList(or.getResult());
		// System.out.println("Result"+rs);
		for (int i = 0; i < rs.size(); i++) {
			OnetQsAllResult oar = new OnetQsAllResult();

			oar.setAnswers(or.getAnswers());
			oar.setEnd(or.getEnd());
			oar.setStart(or.getStart());
			oar.setTotal(or.getTotal());

			oar.setCompanyId("ih");
			oar.setCompanyDescription("any");
			oar.setCompanyName("IIHT");
			oar.setEmail(onetLogin.getEmail());
			oar.setTestName("dfcsd");
			oar.setName("Priti");
			oar.setCreateDate(new Date());
			oar.setCreatedBy("Priti");
			oar.setUpdateDate(new Date());
			oar.setUpdatedBy("Priti");
			oar.setVersion(65);

			Result res = rs.get(i);

			oar.setArea(res.getArea());
			oar.setScore(res.getScore());
			oar.setDescription(res.getDescription());

			onetqsresultservice.saveorupdate(oar);
			System.out.println("success");
		}
		List<OnetQsAllResult> rsget = onetqsresultservice.displayallresult(onetLogin.getEmail());
		List<OnetQsAllResult> dispgraph = new ArrayList<>();

		for (int i = 0; i <= 5; i++) {
			dispgraph.add(rsget.get(i));
		}
		System.out.println("data " + rsget);
		mav.addObject("rs", dispgraph);

		return mav;
	}

	private void setAns(onetQsDto onetQsdto, HttpServletRequest request) {
		String ans = "";
		String ans1 = (String) request.getSession().getAttribute("ans");

		if (ans1 != "" || ans1 != null) {
			// ans=ans+ans1;
		}
		int pge = (int) request.getSession().getAttribute("pg");

		ans = ans + onetQsdto.getOne1() + onetQsdto.getTwo1() + onetQsdto.getThree1() + onetQsdto.getFour1()
				+ onetQsdto.getFive1() + onetQsdto.getSix1() + onetQsdto.getSeven1() + onetQsdto.getEight1()
				+ onetQsdto.getNine1() + onetQsdto.getTen1() + onetQsdto.getEleven1() + onetQsdto.getTwelve1();

		onetQsdto.setOne1(onetQsdto.getOne1());
		onetQsdto.setTwo1(onetQsdto.getTwo1());
		onetQsdto.setThree1(onetQsdto.getThree1());
		onetQsdto.setFour1(onetQsdto.getFour1());
		onetQsdto.setFive1(onetQsdto.getFive1());
		onetQsdto.setSix1(onetQsdto.getSix1());
		onetQsdto.setSeven1(onetQsdto.getSeven1());
		onetQsdto.setEight1(onetQsdto.getEight1());
		onetQsdto.setNine1(onetQsdto.getNine1());
		onetQsdto.setTen1(onetQsdto.getTen1());
		onetQsdto.setEleven1(onetQsdto.getEleven1());
		onetQsdto.setTwelve1(onetQsdto.getTwelve1());
		ans = ans.replace("null", "");

		request.getSession().setAttribute("onetQsdto", onetQsdto);

		request.getSession().setAttribute("ans", ans);
		System.out.println("Answer12 " + ans);

//		User user = (User) request.getSession().getAttribute("user");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");
		double rad = (double) request.getSession().getAttribute("rad");

		OnetString onetstring = new OnetString();
		onetstring.setUsername(onetLogin.getEmail());
		onetstring.setResult(ans);
		onetstring.setPg(pge);
		onetstring.setCompanyId("ih");
//		onetstring.setCompanyDescription("any");
		onetstring.setCompanyName("IIHT");
		onetstring.setUpdateDate(new Date());
		onetstring.setRand(rad);
		onerstringservice.saveString(onetstring);
	}

//	Profiler controller

	@RequestMapping(value = "/profiler", method = RequestMethod.GET)
	public ModelAndView profiler(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetQsdto") onetQsDto onetQsdto, @RequestParam("param") String param) throws Exception {
		ModelAndView mav = new ModelAndView("profiler");

//		User user1 = (User) request.getSession().getAttribute("user");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");

		List<OnetQsAllResult> rsget = onetqsresultservice.displayallresult(onetLogin.getEmail());
		List<OnetQsAllResult> dispgraph = new ArrayList<>();
		OnetQsAllResult all = rsget.get(0);

		System.out.println("test...... ");

		for (int i = 0; i <= 5; i++) {
			dispgraph.add(rsget.get(i));
		}
		String param2 = "";
		String area = param;
		for (int i = 0; i <= 5; i++) {
			if (dispgraph.get(i).getArea().equals(param)) {
				param2 = dispgraph.get(i).getDescription();
			}
		}
		String str1 = "";
		String str2 = "";
		if (param.equals("Realistic")) {
			str1 = "Working with plants and animals";
			str2 = "Real-world materials like wood, tools, and machinery";
		} else if (param.equals("Investigative")) {
			str1 = "Searching for facts";
			str2 = "Figuring out problems";
		} else if (param.equals("Artistic")) {
			str1 = "Creativity in their work";
			str2 = "Work that can be done without following a set of rules";
		} else if (param.equals("Social")) {
			str1 = "Giving advice";
			str2 = "Helping and being of service to people";
		} else if (param.equals("Enterprising")) {
			str1 = "Persuading and leading people";
			str2 = "Making decisions";
		} else if (param.equals("Conventional")) {
			str1 = "Working with clear rules";
			str2 = "Following a strong leader";
		}

		System.out.println("data " + rsget);
		System.out.println("dspgraph::" + dispgraph);
		mav.addObject("rs", dispgraph);
		System.out.println("test...... " + all.getArea());
		System.out.println("test...... " + all.getDescription());
		System.out.println("param.....  " + param2);
		mav.addObject("param2", param2);
		mav.addObject("area", area);
		mav.addObject("str1", str1);
		mav.addObject("str2", str2);
		return mav;
	}

	@RequestMapping(value = "/profiler2", method = RequestMethod.GET)
	public ModelAndView profiler2(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetQsdto") onetQsDto onetQsdto) throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayresult2");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");

		List<OnetQsAllResult> rsget = onetqsresultservice.displayallresult(onetLogin.getEmail());
		List<OnetQsAllResult> dispgraph = new ArrayList<>();

		for (int i = 0; i <= 5; i++) {
			dispgraph.add(rsget.get(i));
		}
		System.out.println("data " + rsget);
		System.out.println("dspgraph::" + dispgraph);
		mav.addObject("rs", dispgraph);
		return mav;
	}

	@GetMapping("jobZone")
	public ModelAndView jobZone(@RequestParam(value = "name", required = false) Integer name) {
		ModelAndView mav = new ModelAndView("jobZone");
		System.out.println("job..." + name);
		mav.addObject("ex", name);
		return mav;
	}

	@GetMapping("exploreJob")
	public ModelAndView exploreJob(@RequestParam("ex") int ex) {
		ModelAndView mav = new ModelAndView("exploreJob");
		System.out.println("param... " + ex);
		mav.addObject("ex", ex);
		return mav;
	}

	@GetMapping("jobZone2")
	public ModelAndView jobZone2(@RequestParam(value = "name", required = false) Integer name,
			HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetQsdto") onetQsDto onetQsdto) {
		ModelAndView mav = new ModelAndView("jobZone2");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");
		List<OnetQsAllResult> rsget = onetqsresultservice.displayallresult(onetLogin.getEmail());
		List<OnetQsAllResult> dispgraph = new ArrayList<>();

		for (int i = 0; i <= 5; i++) {
			dispgraph.add(rsget.get(i));
		}
		mav.addObject("rs", dispgraph);
//		
		System.out.println("job2..." + name);
		mav.addObject("ex", name);
		return mav;
	}
	
	@GetMapping("career")
	public ModelAndView career(@RequestParam(value = "name", required = false) Integer name,
			HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("onetQsdto") onetQsDto onetQsdto) {
		ModelAndView mav = new ModelAndView("career");
		OnetLogin onetLogin = (OnetLogin) request.getSession().getAttribute("onetLogin");
		List<OnetQsAllResult> rsget = onetqsresultservice.displayallresult(onetLogin.getEmail());
		List<OnetQsAllResult> dispgraph = new ArrayList<>();

		for (int i = 0; i <= 5; i++) {
			dispgraph.add(rsget.get(i));
		}
		mav.addObject("rs", dispgraph);
//		
		System.out.println("career..." + name);
		mav.addObject("ex", name);
		return mav;
	}
}
