package com.test.java;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.assessment.data.Question;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "classpath:appContext.xml" })
//@WebAppConfiguration
public class QuestionJson2Java {

//	@Autowired
//	QuestionRepository repo;

	@Test
	public void getStudent() throws JsonGenerationException, JsonMappingException, IOException {
//		List<Question> list = repo.findAll();
		ObjectMapper mapper = new ObjectMapper();

		File file = new File("question.json");
		BufferedReader br = new BufferedReader(new FileReader(file));
		List<Question> listQ = new ArrayList<>();
		String st;
		while ((st = br.readLine()) != null) {
//			System.out.println(st);
//			mapper.setSerializationInclusion(Include.NON_NULL);
			Question question = mapper.readValue(st, Question.class);
			listQ.add(question);
		}
		System.out.println(listQ);
	}
}
