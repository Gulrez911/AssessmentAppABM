package com.test.java;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class QuestionMapperTest {

	public static void main(String[] args) {
		String csvFile = "C:/Users/gulfa/OneDrive/Desktop/ConixantData-20200303T101136Z-001/ConixantData/quesmapper.csv";
		String line = "";
		String cvsSplitBy = ",";

		try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {

			while ((line = br.readLine()) != null) {

				// use comma as separator
				String[] questionMapper = line.split(cvsSplitBy);

//				System.out.println("QuestionMapper [Id= " + country[4] + " ,companyDescription=" + country[5] + "]");
				System.out.println("Id=" + questionMapper[0] + " companyDescription =" + questionMapper[1]
						+ " companyId=" + questionMapper[2] + " companyName= " + questionMapper[3] + " createdDate="
						+ questionMapper[4] + "createdBy=" + questionMapper[5] + " updateDate =" + questionMapper[6]
						+ " updateBy=" + questionMapper[7] + " version=" + questionMapper[8] + " pointsToAward="
						+ questionMapper[9] + " sectionName=" + questionMapper[10] + "TestName=" + questionMapper[11]
						+ " questionId=" + questionMapper[12]);

			}

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
