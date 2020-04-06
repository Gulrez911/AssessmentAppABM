package com.test.java;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;

public class QuestionTest {

	public static void main(String[] args) throws Exception {
		String csvFile = "C:/Users/gulfa/OneDrive/Desktop/ConixantData-20200303T101136Z-001/ConixantData/ques.csv";
//		String csvFile ="C:/Users/gulfa/OneDrive/Desktop/qq.csv";
		String line = "";
		String cvsSplitBy = ",";
		List<String> lines = FileUtils.readLines(new File(csvFile));
		System.out.println(lines.size());
		

//		try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
//
//			while ((line = br.readLine()) != null) {
//
//				// use comma as separator
//				String[] ques = line.split(cvsSplitBy);
//
////				System.out.println("ques [Id= " + country[4] + " ,companyDescription=" + country[5] + "]");
//				System.out.println("Id=" + ques[0] + " companyDescription =" + ques[1] + " companyId=" + ques[2]
//						+ " companyName= " + ques[3] + " createdDate=" + ques[4] + "createdBy=" + ques[5]
//						+ " updateDate =" + ques[6] + " updateBy=" + ques[7] + " version=" + ques[8] + " audioURL="
//						+ ques[9] + " choice1=" + ques[10] + "choice2=" + ques[11] + " choice3=" + ques[12] + "choice4="
//						+ ques[13] + " choice5=" + ques[14] + "choice6=" + ques[15] + " constrnt=" + ques[16]
//						+ "difficultyLevel=" + ques[17] + "fullStack=" + ques[18] + "hiddenInputNegative=" + ques[19]
//						+ "hiddenInputPositive=" + ques[20] + "hiddenOutputNegative=" + ques[21]
//						+ "hiddenOutputPositive=" + ques[22] + "imageURL=" + ques[23] + "inputCode=" + ques[24]
//						+ "instructionIfAny=" + ques[25] + "justification=" + ques[26] + "language=" + ques[27]
//						+ "qualifier1=" + ques[28] + "qualifier2=" + ques[29] + "qualifier3=" + ques[30] + "qualifier4="
//						+ ques[31] + "qualifier5=" + ques[32] + "questionText=" + ques[33] + "questionType=" + ques[34]
//						+ "reviewerEmail=" + ques[35] + "rightChoice=" + ques[36] + "stackProblemDetails=" + ques[37]
//						+ "videoURL=" + ques[38] + "hiddenInputExtremeMinimalValue =" + ques[39]
//						+ " hiddenInputExtremePositiveValue=" + ques[40] + " hiddenInputInvalidDataValue=" + ques[41]
//						+ " hiddenOutputExtremeMinimalValue=" + ques[42] + " hiddenOutputExtremePositiveValue="
//						+ ques[43] + "  hiddenOutputInvalidDataValue=" + ques[44] + "qualifierDescription=" + ques[45]
//						+ " courseContext=" + ques[46] + " courseWeight=" + ques[47] + " fullStackGitHupCodeUrl= "
//						+ ques[48] + " questionWeight =" + ques[49]);
//
//			}
//
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
	}

}
