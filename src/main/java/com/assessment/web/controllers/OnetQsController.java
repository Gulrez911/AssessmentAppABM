package com.assessment.web.controllers;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.catalina.util.URLEncoder;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.OnetQsAllResult;
import com.assessment.data.OnetQuestions;
import com.assessment.data.OnetResults;
import com.assessment.data.OnetString;
import com.assessment.data.Question;
import com.assessment.data.Result;
import com.assessment.data.User;
import com.assessment.services.OnetQsResultService;
import com.assessment.services.OnetQsService;
import com.assessment.services.OnetstringService;
import com.assessment.web.dto.QuestionDto;
import com.assessment.web.dto.onetQsDto;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

@Controller
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
		ModelAndView mav = new ModelAndView("onetdisplayqs");
		User user = (User) request.getSession().getAttribute("user");
		/*
		 * String ans=""; request.getSession().setAttribute("ans",ans);
		 */
		onetQsDto qd = new onetQsDto();
		qd.setNext(0);
		qd.setFirst(true);
		qd.setPage(1);
		List<OnetQuestions> oq = onetQsService.showOnetQuestions();
		// System.out.println("dataa "+oq);
		/*
		 * List<OnetQuestions> os= new ArrayList<>();
		 * 
		 * for(int i=0;i<=11;i++) { OnetQuestions oo=oq.get(i); os.add(oo);
		 * 
		 * }
		 * 
		 * 
		 * mav.addObject("onetq",os);
		 */

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

		mav.addObject("user", user);
		mav.addObject("qd", qd);
		return mav;

	}

	@RequestMapping(value = "/nextOnetQuestion", method = RequestMethod.POST)
	public ModelAndView nextOnetQuestion(@RequestParam(required = false) int para,
			@RequestParam(required = false) int Page, HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("onetQsdto") onetQsDto onetQsdto)
			throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayqs");
		User user = (User) request.getSession().getAttribute("user");

		/*
		 * String ans1=(String)request.getSession().getAttribute("ans");
		 * ans1=ans1.concat(ans);
		 */
		try {
			setAns(onetQsdto, request);
		} catch (NullPointerException e) {

		}

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
		// int a=para+11;

		OnetQuestions oo = oq.get(para);
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
		qd.setPage(Page + 1);
		// qd.setPage(Page+1);
		if (para == 59) {
			qd.setLast(true);
		}

		mav.addObject("onetq", os);
		mav.addObject("user", user);
		mav.addObject("qd", qd);
		request.getSession().setAttribute("pg", Page + 1);
		return mav;

	}

	@RequestMapping(value = "/prevOnetQuestion", method = RequestMethod.POST)
	public ModelAndView prevOnetQuestion(@RequestParam(required = false) int para,
			@RequestParam(required = false) int Page, HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("onetQsdto") onetQsDto onetQsdto)
			throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayqs");
		User user = (User) request.getSession().getAttribute("user");

		onetQsDto ot = (onetQsDto) request.getSession().getAttribute("onetQsdto");

		request.getSession().setAttribute("pg", Page);

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

		OnetQuestions oo = oq.get(para);
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
		qd.setPage(Page);
		// qd.setFirst(false);
		if (opara == 60) {
			qd.setLast(true);
		}
		if (opara == 0)
			qd.setFirst(true);

		if (opara == 60) {
			ot.setLast(true);
		}
		if (opara == 0)
			ot.setFirst(true);

		ot.setNext(opara);
		ot.setPage(Page - 1);
		// mav.addObject("onetq",os);
		mav.addObject("user", user);
		// mav.addObject("qd",qd);
		mav.addObject("qd", ot);
		request.getSession().setAttribute("pg", Page - 1);
		return mav;
	}

	@RequestMapping(value = "/submitTest1", method = RequestMethod.POST)
	public ModelAndView OnetsubmitTest(@RequestParam(required = false) int para,
			@RequestParam(required = false) String ans, HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("onetQsdto") onetQsDto onetQsdto)
			throws Exception {
		ModelAndView mav = new ModelAndView("onetdisplayresult2");

		User user1 = (User) request.getSession().getAttribute("user");
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

		String url = "https://services.onetcenter.org/ws/mnm/interestprofiler/results?answers="
				+ URLEncoder.encode(og, "UTF-8");
		// String url =
		// "https://services.onetcenter.org/ws/mnm/interestprofiler/results?answers=553421321134342523523523254115342111351145453111231155343444";
		String name = "kgate";
		String password = "7252zku";
		String authString = name + ":" + password;

		/* String authStringEnc = new BASE64Encoder().encode(authString.getBytes()); */
		System.out.println("Base64 encoded auth string: " + authString);

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(url);
		ClientResponse resp = webResource.accept("application/json")
				.header("Authorization", "Basic a2dhdGU6NzI1MnprdQ== " + authString)
				.get(ClientResponse.class);
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

			oar.setCompanyId(user1.getCompanyId());
			oar.setCompanyDescription(user1.getCompanyDescription());
			oar.setCompanyName(user1.getCompanyName());
			oar.setEmail(user1.getEmail());
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
		List<OnetQsAllResult> rsget = onetqsresultservice.displayallresult(user1.getEmail());
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
				+ onetQsdto.getFive1() + onetQsdto.getSix1() + onetQsdto.getSeven1()
				+ onetQsdto.getEight1() + onetQsdto.getNine1() + onetQsdto.getTen1()
				+ onetQsdto.getEleven1() + onetQsdto.getTwelve1();

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

		User user = (User) request.getSession().getAttribute("user");
		double rad = (double) request.getSession().getAttribute("rad");

		OnetString onetstring = new OnetString();
		onetstring.setUsername(user.getEmail());
		onetstring.setResult(ans);
		onetstring.setPg(pge);
		onetstring.setCompanyId(user.getCompanyId());
		onetstring.setCompanyName(user.getCompanyName());
		onetstring.setUpdateDate(new Date());
		onetstring.setRand(rad);
		onerstringservice.saveString(onetstring);

	}

}
