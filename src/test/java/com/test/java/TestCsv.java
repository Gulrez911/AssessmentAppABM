package com.test.java;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.Test;

public class TestCsv {
	
	@Test
	public void testCsv() throws Exception{
		String csvFile = "C:/Users/gulfa/OneDrive/Desktop/ConixantData-20200303T101136Z-001/ConixantData/ques.csv";
//		String csvFile ="C:/Users/gulfa/OneDrive/Desktop/qq.csv";
		String line = "";
		String cvsSplitBy = ",";
		List<String> lines = FileUtils.readLines(new File(csvFile));
		System.out.println(lines.size());
	}

}
