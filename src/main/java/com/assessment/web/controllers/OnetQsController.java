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

		setAns(onetQsdto, request);

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
//		setAns(onetQsdto, request);
		try {
			setAns(onetQsdto, request);
		} catch (Exception e) {
			// TODO: handle exception
		}
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
		System.out.println("setAns"+onetQsdto);
		String ans = "";
		String ans1 = (String) request.getSession().getAttribute("ans");

		if (ans1 != "" || ans1 != null) {
			// ans=ans+ans1;
		}
		int pge = (int) request.getSession().getAttribute("pg");
		/*
		 * if(pge==1 && ans.length()>=12) {
		 * 
		 * ans=ans1.substring(0,0)+ans+ans1.substring(12); }else if(pge==2 &&
		 * ans.length()>=24 ) { ans=ans1.substring(12)+ans+ans1.substring(24);
		 * 
		 * }else if(pge==3 && ans.length()>=24) {
		 * ans=ans1.substring(25)+ans+ans1.substring(36); }else if(pge==4 &&
		 * ans.length()>=36) { ans=ans1.substring(37)+ans+ans1.substring(48); }else
		 * if(pge==5 && ans.length()>=48) { ans = ans1.substring(0) + ans +
		 * ans1.substring(12);} else {
		 */
		if (onetQsdto.getOne()) {
			ans = ans + "1";
			onetQsdto.setOne(true);
		} else if (onetQsdto.getTwo()) {
			ans = ans + "2";
			onetQsdto.setTwo(true);

		} else if (onetQsdto.getThree()) {
			ans = ans + "3";
			onetQsdto.setThree(true);
		} else if (onetQsdto.getFour()) {
			ans = ans + "4";
			onetQsdto.setFour(true);
		}

		else if (onetQsdto.getFive()) {
			ans = ans + "5";
			onetQsdto.setFive(true);
		}
		if (onetQsdto.getSix()) {
			ans = ans + "1";
			onetQsdto.setSix(true);
		} else if (onetQsdto.getSeven()) {
			ans = ans + "2";
			onetQsdto.setSeven(true);
		} else if (onetQsdto.getEight()) {
			ans = ans + "3";
			onetQsdto.setEight(true);
		} else if (onetQsdto.getNine()) {
			ans = ans + "4";
			onetQsdto.setNine(true);
		} else if (onetQsdto.getTen()) {
			ans = ans + "5";
			onetQsdto.setTen(true);
		}
		if (onetQsdto.getEleven()) {
			ans = ans + "1";
			onetQsdto.setEleven(true);
		} else if (onetQsdto.getTwelve()) {
			ans = ans + "2";
			onetQsdto.setTwelve(true);
		} else if (onetQsdto.getThirteen()) {
			ans = ans + "3";
			onetQsdto.setThirteen(true);
		} else if (onetQsdto.getFourteen()) {
			ans = ans + "4";
			onetQsdto.setFourteen(true);
		} else if (onetQsdto.getFifteen()) {
			ans = ans + "5";
			onetQsdto.setFifteen(true);
		}
		if (onetQsdto.getSixteen()) {
			ans = ans + "1";
			onetQsdto.setSixteen(true);
		} else if (onetQsdto.getSeventeen()) {
			ans = ans + "2";
			onetQsdto.setSeventeen(true);
		} else if (onetQsdto.getEighteen()) {
			ans = ans + "3";
			onetQsdto.setEighteen(true);
		} else if (onetQsdto.getNineteen()) {
			ans = ans + "4";
			onetQsdto.setNineteen(true);
		} else if (onetQsdto.getTwenty()) {
			ans = ans + "5";
			onetQsdto.setTwenty(true);
		}
		if (onetQsdto.getTwentyone()) {
			ans = ans + "1";
			onetQsdto.setTwentyone(true);
		} else if (onetQsdto.getTwentytwo()) {
			ans = ans + "2";
			onetQsdto.setTwentytwo(true);
		} else if (onetQsdto.getTwentythree()) {
			ans = ans + "3";
			onetQsdto.setTwentythree(true);
		} else if (onetQsdto.getTwentyfour()) {
			ans = ans + "4";
			onetQsdto.setTwentyfour(true);
		} else if (onetQsdto.getTwentyfive()) {
			ans = ans + "5";
			onetQsdto.setTwentyfive(true);
		}
		if (onetQsdto.getTwentysix()) {
			ans = ans + "1";
			onetQsdto.setTwentysix(true);
		} else if (onetQsdto.getTwentyseven()) {
			ans = ans + "2";
			onetQsdto.setTwentyseven(true);
		} else if (onetQsdto.getTwentyeight()) {
			ans = ans + "3";
			onetQsdto.setTwentyeight(true);
		} else if (onetQsdto.getTwentynine()) {
			ans = ans + "4";
			onetQsdto.setTwentynine(true);
		} else if (onetQsdto.getThirty()) {
			ans = ans + "5";
			onetQsdto.setThirty(true);
		}
		if (onetQsdto.getThirtyone()) {
			ans = ans + "1";
			onetQsdto.setThirtyone(true);
		} else if (onetQsdto.getThirtytwo()) {
			ans = ans + "2";
			onetQsdto.setThirtytwo(true);
		} else if (onetQsdto.getThirtythree()) {
			ans = ans + "3";
			onetQsdto.setThirtythree(true);
		} else if (onetQsdto.getThirtyfour()) {
			ans = ans + "4";
			onetQsdto.setThirtyfour(true);
		} else if (onetQsdto.getThirtyfive()) {
			ans = ans + "5";
			onetQsdto.setThirtyfive(true);
		}
		if (onetQsdto.getThirtysix()) {
			ans = ans + "1";
			onetQsdto.setThirtysix(true);
		} else if (onetQsdto.getThirtyseven()) {
			ans = ans + "2";
			onetQsdto.setThirtyseven(true);
		} else if (onetQsdto.getThirtyeight()) {
			ans = ans + "3";
			onetQsdto.setThirtyeight(true);
		} else if (onetQsdto.getThirtynine()) {
			ans = ans + "4";
			onetQsdto.setThirtynine(true);
		} else if (onetQsdto.getForty()) {
			ans = ans + "5";
			onetQsdto.setForty(true);
		}
		if (onetQsdto.getFortyone()) {
			ans = ans + "1";
			onetQsdto.setFortyone(true);
		} else if (onetQsdto.getFortytwo()) {
			ans = ans + "2";
			onetQsdto.setFortytwo(true);
		} else if (onetQsdto.getFortythree()) {
			ans = ans + "3";
			onetQsdto.setFortythree(true);
		} else if (onetQsdto.getFortyfour()) {
			ans = ans + "4";
			onetQsdto.setFortyfour(true);
		} else if (onetQsdto.getFortyfive()) {
			ans = ans + "5";
			onetQsdto.setFortyfive(true);
		}
		if (onetQsdto.getFortysix()) {
			ans = ans + "1";
			onetQsdto.setFortysix(true);
		} else if (onetQsdto.getFortyseven()) {
			ans = ans + "2";
			onetQsdto.setFortyseven(true);
		} else if (onetQsdto.getFortyeight()) {
			ans = ans + "3";
			onetQsdto.setFortyeight(true);
		} else if (onetQsdto.getFortynine()) {
			ans = ans + "4";
			onetQsdto.setFortynine(true);
		} else if (onetQsdto.getFifty()) {
			ans = ans + "5";
			onetQsdto.setFifty(true);
		}
		if (onetQsdto.getFiftyone()) {
			ans = ans + "1";
			onetQsdto.setFiftyone(true);
		} else if (onetQsdto.getFiftytwo()) {
			ans = ans + "2";
			onetQsdto.setFiftytwo(true);
		} else if (onetQsdto.getFiftythree()) {
			ans = ans + "3";
			onetQsdto.setFiftythree(true);
		} else if (onetQsdto.getFiftyfour()) {
			ans = ans + "4";
			onetQsdto.setFiftyfour(true);
		} else if (onetQsdto.getFiftyfive()) {
			ans = ans + "5";
			onetQsdto.setFiftyfive(true);
		}
		if (onetQsdto.getFiftysix()) {
			ans = ans + "1";
			onetQsdto.setFiftysix(true);
		} else if (onetQsdto.getFiftyseven()) {
			ans = ans + "2";
			onetQsdto.setFiftyseven(true);
		} else if (onetQsdto.getFiftyeight()) {
			ans = ans + "3";
			onetQsdto.setFiftyeight(true);
		} else if (onetQsdto.getFiftynine()) {
			ans = ans + "4";
			onetQsdto.setFiftynine(true);
		} else if (onetQsdto.getSixty()) {
			ans = ans + "5";
			onetQsdto.setSixty(true);
		}

		/*
		 * if(Page>0) { if(Page==1 && ans.length()>=11) {
		 * 
		 * } else if(Page==2 && ans.length()>=22) {
		 * 
		 * } }
		 */

		/* else { ans=ans+ans; } */

		ans = ans.replace("null", "");
		request.getSession().setAttribute("onetQsdto", onetQsdto);
		request.getSession().setAttribute("ans", ans);
		System.out.println("Answer12 " + ans);

		User user = (User) request.getSession().getAttribute("user");
		double rad = (double) request.getSession().getAttribute("rad");

		OnetString onetstring = new OnetString();
//		onetstring.setUsername(user.getEmail());
		onetstring.setUsername("gulfarooqui1@gmail.com");
		onetstring.setResult(ans);
		onetstring.setPg(pge);
		onetstring.setCompanyId(user.getCompanyId());
		onetstring.setCompanyName(user.getCompanyName());
		onetstring.setUpdateDate(new Date());
		onetstring.setRand(rad);
		onerstringservice.saveString(onetstring);

	}

}
