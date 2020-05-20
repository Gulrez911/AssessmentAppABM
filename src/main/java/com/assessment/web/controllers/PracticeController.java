package com.assessment.web.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.PracticeCode;
import com.assessment.data.User;
import com.assessment.services.CompanyService;
import com.assessment.services.PracticeService;
import com.assessment.services.QuestionService;

@Controller
public class PracticeController {

	@Autowired
	private QuestionService questionService;

	@Autowired
	private PracticeService practiceService;

	@Autowired
	private CompanyService companyService;

	@RequestMapping(value = "/practice", method = RequestMethod.GET)
	public ModelAndView addQuestion(@RequestParam(required = false) String lang,
			@RequestParam(required = false) Long id,@RequestParam(required = false) String msg) throws Exception {
		ModelAndView mav = new ModelAndView("practice");
		PracticeCode practiceCode = new PracticeCode();
		mav.addObject("practiceCode", practiceCode);
		Map<String, String> langs = new HashMap<>();
		List<PracticeCode> listCode = practiceService.findAllPracticeCode();
		System.out.println(listCode);
		// System.out.println(practiceCode.getCreateDate() +
		// ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		mav.addObject("listCode", listCode);
		langs.put("Java", "Java");
		langs.put("C", "C");
		langs.put("C plusplus", "C++");
		langs.put("PHP", "PHP");
		langs.put("Ruby", "Ruby");
		langs.put("Python", "Python");
		langs.put("C sharp", "C#");
		langs.put("Go", "Go");
		langs.put("MySql", "MySql");
		langs.put("Perl", "Perl");
		langs.put("Clojure", "Clojure");
		langs.put("Plain JavaScript", "Plain JavaScript");
		langs.put("Scala", "Scala");
		langs.put("VB.NET", "VB.NET");
		langs.put("Bash", "Bash");
		langs.put("Objective-C", "Objective-C");
		langs.put("Rust", "Rust");
		mav.addObject("langs", langs);
		practiceCode.setLang("Java");
		if (lang == null) {
			practiceCode.setCode(
					"import java.util.Scanner;\\nclass CodingExercise{\\n\\tpublic static void main(String args[]){\\n\\tScanner reader = new Scanner(System.in);\\n\\tString str = reader.nextLine();\\n\\t//The argument in input area (see below code editor) is read into str variable at runtime....Now continue from here\\n\\t}\\n}\\n");
		} else {
			practiceCode.setLang(lang);
			String code = getCode(lang);
			practiceCode.setCode(code);
		}
		if (id != null) {
			practiceCode = practiceService.findByDate(id);
			mav.addObject("practiceCode", practiceCode);
		}
		
		if(msg != null)
		{
			if(msg.equals("New Code save successfully"))
			{
				
				mav.addObject("message", "Code Save Success");// later put it as label
				mav.addObject("msgtype", "Success");
				
			}
			
			else
			{
				
				mav.addObject("message", "Code Update Success");// later put it as label
				mav.addObject("msgtype", "Success");
				
			}
		}

		// mav.addObject("message","Code Succeessfully Saved");

		return mav;

	}

	public String getCode(String lang) {
		if (lang.equals("C plusplus")) {

			return "#include <iostream>\\r\\n using namespace std;\\r\\n \\r\\n int main() {\\r\\n 	// your code goes here\\r\\n 	return 0;\\r\\n }\\r\\n ";
		}

		else if (lang.equals("Java")) {
			return "import java.util.Scanner;\\nclass CodingExercise{\\n\\tpublic static void main(String args[]){\\n\\tScanner reader = new Scanner(System.in);\\n\\tString str = reader.nextLine();\\n\\t//The argument in input area (see below code editor) is read into str variable at runtime....Now continue from here\\n\\t}\\n}\\n";
		} else if (lang.equals("C")) {
			return "#include <stdio.h>\\r\\nint main(void) {\\r\\n// your code goes here\\r\\nreturn 0;\\r\\n}";
		} else if (lang.equals("PHP")) {
			return "<?php\\r\\n\\r\\n// your code goes here";
		} else if (lang.equals("Ruby")) {
			return "# cook your code here";
		} else if (lang.equals("Python")) {
			return "# cook your dish here\\r\\n";
		} else if (lang.equals("C sharp")) {
			return "using System;\\r\\npublic class Test\\r\\n{\\r\\n public static void Main()\\r\\n{\\r\\n	// your code goes here\\r\\n}\\r\\n}";
		} else if (lang.equals("Go")) {
			return "package main\\r\\n import \"fmt\"\\r\\n \\r\\n func main(){\\r\\n	// your code goes here\\r\\n fmt.Println(\"!... Hello World ...!\")\\r\\n  }\\r\\n";
		} else if (lang.equals("MySql")) {
			return "----BEGIN-----\\r\\n name\\r\\n  Hello\\r\\n ----END----";
		} else if (lang.equals("Perl")) {
			return "#!/usr/bin/perl \\r\\n  \\r\\n # Modules used \\r\\n use strict; \\r\\n use warnings; \\r\\n  \\r\\n # Print function  \\r\\n print(\"Hello World\\n\"); ";
		} else if (lang.equals("Clojure")) {
			return "; your code goes here\\r\\n ";
		} else if (lang.equals("Plain JavaScript")) {
			return "// bake your code here\\r\\n  ";
		} else if (lang.equals("Scala")) {
			return " object Test  \\r\\n { \\r\\n   // Main Method  \\r\\n  def main(args: Array[String])  \\r\\n  { \\r\\n  // prints Hello World \\r\\n   println(\"Hello World!\")  \\r\\n } \\r\\n} ";
		} else if (lang.equals("VB.NET")) {
			return "Imports System\\r\\n \\r\\n Module Module1\\r\\n    Sub Main()\\r\\n  Console.WriteLine(\"Hello World!\")\\r\\n \\r\\n         Console.WriteLine(\"Press Enter Key to Exit.\")\\r\\n \\r\\n       Console.ReadLine()\\r\\n \\r\\n    End Sub \\r\\n End Module";

		} else if (lang.equals("Bash")) {
			return "object Main extends App {\\r\\n  // your dish goes here\\r\\n //echo \" Hello World! \"  \\r\\n}";
		} else if (lang.equals("Objective-C")) {
			return "#import <Foundation/Foundation.h>\\r\\n \\r\\n @interface SampleClass:NSObject\\r\\n - (void)sampleMethod;\\r\\n @end\\r\\n \\r\\n @implementation SampleClass\\r\\n 	\\r\\n - (void)sampleMethod {\\r\\n  NSLog(@\"Hello, World! \\n\");\\r\\n 	}\\r\\n \\r\\n @end\\r\\n \\r\\n int main() {\\r\\n  /* my first program in Objective-C */\\r\\n  SampleClass *sampleClass = [[SampleClass alloc]init];\\r\\n   [sampleClass sampleMethod];\\r\\n  return 0;\\r\\n 	}";
		} else if (lang.equals("Rust")) {
			return "fn main() {\\r\\n     // Statements here are executed when the compiled binary is called\\r\\n \\r\\n   // Print text to the console\\r\\n     println!(\"Hello World!\");\\r\\n }";
		} else {
			return "using System;\\r\\n" + "\r\n" + "public class Test\r\n" + "{\r\n"
					+ "	public static void Main()\r\n" + "	{\r\n" + "		// your code goes here\r\n" + "	}\r\n"
					+ "}";
		}
	}

	@RequestMapping(value = "/changeLang", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> addCode(@RequestParam("lang") String lang) {
		Map<String, Object> map = new HashMap<>();
		if (lang.equals("C plusplus")) {
			map.put("code", "#include <iostream>\r\n" + "using namespace std;\r\n" + "\r\n" + "int main() {\r\n"
					+ "	// your code goes here\r\n" + "	return 0;\r\n" + "}\r\n" + "");
		}

		else if (lang.equals("Java")) {
			map.put("code", "import java.util.Scanner;\r\n" + "class CodingExercise{\r\n"
					+ "  public static void main(String args[]){\r\n" + "  Scanner reader = new Scanner(System.in);\r\n"
					+ "  String str = reader.nextLine();\r\n"
					+ "   //The argument in input area (see below code editor) is read into str variable at runtime....Now continue from here\r\n"
					+ "  }\r\n" + "}\r\n");
		}

		else if (lang.equals("C")) {
			map.put("code", "#include <stdio.h>\r\n" + "\r\n" + "int main(void) {\r\n" + "	// your code goes here\r\n"
					+ "	return 0;\r\n" + "}");
		}

		else if (lang.equals("PHP")) {
			map.put("code", "<?php\r\n" + "\r\n" + "// your code goes here");
		} else if (lang.equals("Ruby")) {
			map.put("code", "# cook your code here");
		} else if (lang.equals("Python")) {
			map.put("code", "# cook your dish here\r\n" + "");
		} else if (lang.equals("C sharp")) {
			map.put("code",
					"using System;\r\n" + "\r\n" + "public class Test\r\n" + "{\r\n"
							+ "	public static void Main()\r\n" + "	{\r\n" + "		// your code goes here\r\n"
							+ "	}\r\n" + "}");
		} else if (lang.equals("Go")) {
			map.put("code", "package main\r\n" + "import \"fmt\"\r\n" + "\r\n" + "func main(){\r\n"
					+ "	// your code goes here\r\n" + "}\r\n" + "");
		} else if (lang.equals("MySql")) {
			map.put("code", "----BEGIN-----\r\n" + "name\r\n" + "Hello\r\n" + "----END----");
		} else if (lang.equals("Perl")) {
			map.put("code", "#!/usr/bin/perl\r\n" + "# your code goes here\r\n" + "");
		}

		else if (lang.equals("Clojure")) {
			map.put("code", "; your code goes here\r\n" + "");
		} else if (lang.equals("Plain JavaScript")) {
			map.put("code", "// bake your code here\r\n" + "");
		} else if (lang.equals("Scala")) {
			map.put("code", "object Main extends App {\r\n" + "	// your dish goes here\r\n" + "}");
		} else if (lang.equals("VB.NET")) {
			map.put("code",
					"Imports System\r\n" + "\r\n" + " \r\n" + "\r\n" + "Module Module1\r\n" + "\r\n"
							+ "    Sub Main()\r\n" + "\r\n" + "        Console.WriteLine(\"Hello World!\")\r\n" + "\r\n"
							+ "        Console.WriteLine(\"Press Enter Key to Exit.\")\r\n" + "\r\n"
							+ "        Console.ReadLine()\r\n" + "\r\n" + "    End Sub \r\n" + "\r\n" + "End Module");
		}

		else if (lang.equals("Bash")) {
			map.put("code", "/* cook your code below */");
		} else if (lang.equals("Objective-C")) {
			map.put("code",
					"#import <Foundation/Foundation.h>\r\n" + "\r\n" + "int main(int argc, const char * argv[]) {\r\n"
							+ "    @autoreleasepool {\r\n" + "        // insert code here...\r\n"
							+ "        NSLog(@\"Hello, World!\");\r\n" + "    }\r\n" + "    return 0;\r\n" + "}");
		}

		else if (lang.equals("Rust")) {
			map.put("code",
					"fn main() {\r\n" + "    // Statements here are executed when the compiled binary is called\r\n"
							+ "\r\n" + "    // Print text to the console\r\n" + "    println!(\"Hello World!\");\r\n"
							+ "}");
		}
		return map;
	}

	@RequestMapping(value = "/saveCode", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public String saveCode(@RequestBody PracticeCode data, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("::::::     " + data);
		User user = (User) request.getSession().getAttribute("user");
		data.setCompanyId(user.getCompanyId());
		data.setCompanyName(user.getCompanyName());
		Date date = new Date();

		String code = data.getCode().replaceAll("\r", "");
		String rep = "\\\\n";
		String rept = "\\\\t";
		code = code.replaceAll("\n", rep);
		code = code.replaceAll("\t", rept);
		data.setCode(code);
//		if ((!data.getCode().contains("<br />")) && data.getCode() != null) {
//			data.setCode(data.getCode().replaceAll("\\r\\n|\\r|\\n", "<br />"));
//		}
		String msg="";
		System.out.println(data.getId()
				+ ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		if (data.getId() != null) {
			practiceService.updateCode(data);
			msg="update successfully";
		}

		else {
			 data.setCreateDate(date);
			practiceService.save(data);
			msg="New Code save successfully";
		}

		return msg;
	}

//	@InitBinder
//	public void initConverter(WebDataBinder binder) {
//		CustomDateEditor dateEditor = new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true);
//		binder.registerCustomEditor(Date.class, dateEditor);
//	}

	@RequestMapping(value = "/dateWiseCode", method = RequestMethod.GET)
	public ModelAndView dateWiseCode(@RequestParam("id") Long id) {
		System.out.println(">>>>>>>>>>>> " + id);
		PracticeCode practiceCode = new PracticeCode();
		ModelAndView mav = new ModelAndView("practice");
		mav.addObject("practiceCode", practiceCode);
		PracticeCode dateWiseCode = practiceService.findByDate(id);
		System.out.println(dateWiseCode);
		System.out.println(dateWiseCode.getCode() + ">>>>>>>>>>>>>>>>>>>>>>>>");
		// String code = dateWiseCode.getCode();

		if ((!dateWiseCode.getCode().contains("\\r\\n|\\r|\\n")) && dateWiseCode.getCode() != null) {
			String code = dateWiseCode.getCode().replaceAll("<br />", "\\r\\n");
			System.out.println(code + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
			practiceCode.setCode(code);
		}

		// practiceCode.setCode(dateWiseCode.getCode());
		return mav;
	}

}
