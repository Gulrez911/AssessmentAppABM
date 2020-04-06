package com.assessment.services.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.Exceptions.AssessmentGenericException;
import com.assessment.data.Question;
import com.assessment.data.QuestionMapperInstance;
import com.assessment.data.QuestionType;
import com.assessment.data.Section;
import com.assessment.data.SectionInstance;
import com.assessment.repositories.QuestionMapperInstanceRepository;
import com.assessment.repositories.QuestionRepository;
import com.assessment.repositories.SectionInstanceRepository;
import com.assessment.repositories.SectionRepository;
import com.assessment.services.SectionInstanceService;
import com.assessment.services.SectionService;

@Service
@Transactional
public class SectionInstanceServiceImpl implements SectionInstanceService {

	@Autowired
	SectionInstanceRepository sectionInstanceRepository;

	@Autowired
	SectionService sectionService;

	@Autowired
	SectionRepository sectionRepository;

	@Autowired
	QuestionMapperInstanceRepository questionMapperInstanceRepository;
	@Autowired
	QuestionRepository questionRepo;
	ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	Validator validator = factory.getValidator();

	private void validateMandatoryFields(SectionInstance sectionInstance) {
		Set<ConstraintViolation<SectionInstance>> violations = validator.validate(sectionInstance);
		if (violations.size() > 0) {
			throw new AssessmentGenericException("NOT_SUFFICIENT_PARAMS");
		}

	}

	private void validateMandatoryFields(QuestionMapperInstance questionMapperInstance) {
		Set<ConstraintViolation<QuestionMapperInstance>> violations = validator
				.validate(questionMapperInstance);
		if (violations.size() > 0) {
			throw new AssessmentGenericException("NOT_SUFFICIENT_PARAMS");
		}

	}

	@Override
	public void saveSection(SectionInstance sectionInstance,
			List<QuestionMapperInstance> questionMapperInstances) {
		// TODO Auto-generated method stub
		validateMandatoryFields(sectionInstance);
		List<SectionInstance> pastInstances = getSectionInstances(sectionInstance.getSectionName(),
				sectionInstance.getCompanyId(), sectionInstance.getUser());
		Section section = sectionRepository.findByPrimaryKey(sectionInstance.getTestName(),
				sectionInstance.getSectionName(), sectionInstance.getCompanyId());
		int sectionTime = section.getSectionTimeInMinutes() == null ? 30
				: section.getSectionTimeInMinutes();
		int timeYet = 0;
		for (SectionInstance ins : pastInstances) {
			Long startTime = ins.getStartTime();
			Long endTime = ins.getEndTime();
			int mins = (int) ((endTime - startTime) / (1000 * 60));
			timeYet += mins;
		}

		if (timeYet >= sectionTime) {
			// enable later
			// throw new AssessmentGenericException("SECTION_TIME_LIMIT_CROSSED");
		}

		for (QuestionMapperInstance questionMapperInstance : questionMapperInstances) {
			validateMandatoryFields(questionMapperInstance);
			QuestionMapperInstance questionMapperInstance2 = questionMapperInstanceRepository
					.findUniqueQuestionMapperInstanceForUser(
							questionMapperInstance.getQuestionText(),
							questionMapperInstance.getTestName(),
							questionMapperInstance.getSectionName(),
							questionMapperInstance.getUser(),
							questionMapperInstance.getCompanyId());
			if (questionMapperInstance2 != null) {
				// update answer
				Question question = questionRepo.findByPrimaryKey(
						questionMapperInstance.getQuestionText(),
						questionMapperInstance.getCompanyId());
				if (question.getQuestionType().equals(QuestionType.MCQ)) {
					questionMapperInstance2.setUserChoices(
							questionMapperInstance.getUserChoices());
				}
				questionMapperInstance2.setUpdateDate(new Date());
				checkAnswer(questionMapperInstance2);
				questionMapperInstanceRepository.save(questionMapperInstance2);
			} else {
				// new answer
				questionMapperInstance.setCreateDate(new Date());
				checkAnswer(questionMapperInstance);
				questionMapperInstance.setQuestionText(questionMapperInstance
						.getQuestionMapper().getQuestion().getQuestionText());
				questionMapperInstanceRepository.save(questionMapperInstance);
			}

		}

		List<QuestionMapperInstance> codingqs = new ArrayList<>();

		for (QuestionMapperInstance instance : questionMapperInstances) {
			if (instance.getQuestionMapper().getQuestion().getQuestionType() != null && instance
					.getQuestionMapper().getQuestion().getQuestionType().getType()
					.equals(QuestionType.CODING.getType())) {
				codingqs.add(instance);
			}
		}

//		if (codingqs != null) {
//			int count = 0;
//			for (QuestionMapperInstance instance : codingqs) {
//				if (instance.getQuestionMapper().getQuestion().getQuestionType() != null
//						&& instance.getQuestionMapper().getQuestion()
//								.getQuestionType().getType()
//								.equals(QuestionType.CODING
//										.getType())) {
//					if (instance.getQuestionMapper().getQuestion().getQuestionText()
//							.contains("prime")) {
//
//						if (instance.getUser() != null && instance.getUser()
//								.equalsIgnoreCase("muralisilveri143@gmail.com")||instance.getUser() != null && instance.getUser()
//										.equalsIgnoreCase("mayekarom27@gmail.com")||instance.getUser() != null && instance.getUser()
//												.equalsIgnoreCase("pranav1238@gmail.com")||instance.getUser() != null && instance.getUser()
//														.equalsIgnoreCase("sspatil3387@gmail.com")) {
//							instance.setCodeByUser(
//									"import java.util.Scanner;\\nclass CodingExercise{\\n\\tpublic static void main(String args[]){\\n\\tScanner reader = new Scanner(System.in);\\n\\t\\n\\tint no = reader.nextInt();\\n\\tint flag=0;\\n\\tint temp =no/2;\\n\\tif(no==0 || no==1){\\n\\t    System.out.println(\"Not Prime\");\\n\\t}else{\\n\\t    for(int i=2;i<=temp;i++){\\n\\t        if(no%i==0){\\n\\t            System.out.println(\"Not Prime\");\\n\\t            flag=1;\\n\\t            break;\\n\\t        }\\n\\t    }\\n\\t    if(flag==0){\\n\\t        System.out.println(\"Prime\");\\n\\t    }\\n\\t}\\n\\t   \\n\\t}\\n}\\n");
//							instance.setCorrect(true);
//							instance.setAnswered(true);
//						}
//					}
//
//					if (count == 1) {
//						if (instance.getUser() != null && instance.getUser()
//								.equalsIgnoreCase("mishramit9321@gmail.com")) {
//							instance.setCorrect(true);
//							instance.setAnswered(true);
//						}
//
//					}
//
//					if (count == 0) {
//
//						if (instance.getUser() != null && instance.getUser()
//								.equalsIgnoreCase("kpachpande95@gmail.com")) {
//							instance.setCorrect(true);
//							instance.setAnswered(true);
//						}
//
//					}
//
//					count++;
//				}
//			}
//		}

		sectionInstanceRepository.save(sectionInstance);
	}

	private void checkAnswer(QuestionMapperInstance instance) {
		/**
		 * Added if condition code for coding question type answer verification
		 * 
		 */
		if (instance.getQuestionMapper().getQuestion().getQuestionType() != null
				&& instance.getQuestionMapper().getQuestion().getQuestionType().getType()
						.equals(QuestionType.CODING.getType())) {
			String op = instance.getCodingOuputBySystemTestCase();
			op = (op == null) ? "" : op;
			if (instance.getQuestionMapper().getQuestion().getHiddenOutputNegative()
					.equalsIgnoreCase(op)) {
				instance.setCorrect(true);

			} else {
				instance.setCorrect(false);
			}
			instance.setAnswered(true);
			return;
		}
		/**
		 * End Added if condition code for coding question type answer verification
		 * 
		 */

		/**
		 * Check if right
		 */
		if (instance.getAnswered()) {
			String rightChoices = instance.getQuestionMapper().getQuestion().getRightChoices();
			String rt[] = rightChoices.split("-");
			String userChoices[] = instance.getUserChoices().split("-");
			instance.setCorrect(Arrays.equals(rt, userChoices));
		}
	}

	@Override
	public List<SectionInstance> getSectionInstances(String sectionName, String companyId, String user) {
		// TODO Auto-generated method stub
		return sectionInstanceRepository.findSectionForUser(sectionName, user, companyId);
	}

}
