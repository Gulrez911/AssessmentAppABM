package com.assessment.web.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.assessment.data.Question;

public class ExcelBuilder extends AbstractXlsView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		@SuppressWarnings("unchecked")
		List<Question> listQ = (List<Question>) model.get("listQ");
		Sheet sheet = workbook.createSheet("List of Question");
		System.out.println("inside Excel Builder:" + listQ);
		Row header = sheet.createRow(0);
		header.createCell(0).setCellValue("ID");
		header.createCell(1).setCellValue("Question Text");

		// Create data cells
		int rowCount = 1;
		for (Question question : listQ) {
			Row courseRow = sheet.createRow(rowCount++);
			courseRow.createCell(0).setCellValue(question.getId());
			courseRow.createCell(1).setCellValue(question.getQuestionText());
		}
	}

}
