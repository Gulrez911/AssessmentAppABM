package com.test.java;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.assessment.data.Question;
import com.assessment.repositories.QuestionRepository;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:appContext.xml" })
@WebAppConfiguration
public class QuestionJavaToJson {
	@Autowired
	QuestionRepository repo;

	@Test
	public void getStudent() throws JsonGenerationException, JsonMappingException, IOException {
		List<Question> list = repo.findAll();
		ObjectMapper mapper = new ObjectMapper();
		File file = new File("question.json");
		for (Question st : list) {
//			mapper.writeValue(new File("student.json"), st);
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(file, true))); // append
			// mode
			// file
			// writer
			out.append("\n");
			mapper.writeValue(out, st);
			System.out.println(list);
		}
	}
}
