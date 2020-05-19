
package com.assessment.reports.manager;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class AssessmentUserPerspectiveData {
	Logger logger = LoggerFactory.getLogger(AssessmentUserPerspectiveData.class);

	String firstName;

	String lastName;

	String email;

	String testName;

	Float overAllScore;

	String sectionWiseScore;

	Boolean pass;

	String result;

	Integer noOfAttempts;

	String reportCreationDate;

	String reportCreatedBy;

	Date testInviteSent;

	Boolean sharedDirect = Boolean.valueOf(false);

	String noOfQuestionsNotAnswered;

	Integer noOfNonCompliances;
	
	public Integer getNoOfNonCompliances() {
		return noOfNonCompliances;
	}

	public void setNoOfNonCompliances(Integer noOfNonCompliances) {
		this.noOfNonCompliances = noOfNonCompliances;
	}

	Map<String, String> sections_score = new HashMap();

	Map<String, String> sections_noOfQuestionsNotAnswered = new HashMap();

	String companyId;
	String urlForUserSession;
	String testStartDate;
	String testEndDate;

	public AssessmentUserPerspectiveData() {
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public Float getOverAllScore() {
		return overAllScore;
	}

	public void setOverAllScore(Float overAllScore) {
		this.overAllScore = overAllScore;
	}

	public String getSectionWiseScore() {
		return sectionWiseScore;
	}

	public void setSectionWiseScore(String sectionWiseScore) {
		this.sectionWiseScore = sectionWiseScore;
		if (sectionWiseScore != null) {
			String[] secs = sectionWiseScore.split(",");
			for (String s : secs) {
				String[] s0 = s.split("-");
				if (s0.length == 1) {
					String[] s1 = new String[2];
					s1[0] = s0[0];
					s1[1] = "0.0";
					s0 = s1;
				}
				try {
					sections_score.put(s0[0], s0[1]);
				} catch (ArrayIndexOutOfBoundsException e) {
					logger.error("problem ..." + s0, e);
					System.out.println(s0);
					e.printStackTrace();
					throw e;
				}
			}
		}
	}

	public Boolean getPass() {
		return pass;
	}

	public void setPass(Boolean pass) {
		this.pass = pass;
	}

	public Integer getNoOfAttempts() {
		return noOfAttempts;
	}

	public void setNoOfAttempts(Integer noOfAttempts) {
		this.noOfAttempts = noOfAttempts;
	}

	public String getReportCreationDate() {
		return reportCreationDate;
	}

	public void setReportCreationDate(String reportCreationDate) {
		this.reportCreationDate = reportCreationDate;
	}

	public String getReportCreatedBy() {
		return reportCreatedBy;
	}

	public void setReportCreatedBy(String reportCreatedBy) {
		this.reportCreatedBy = reportCreatedBy;
	}

	public String getResult() {
		if (getPass().booleanValue()) {
			return "Pass";
		}
		return "Fail";
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Date getTestInviteSent() {
		return testInviteSent;
	}

	public void setTestInviteSent(Date testInviteSent) {
		this.testInviteSent = testInviteSent;
	}

	public Boolean getSharedDirect() {
		return sharedDirect;
	}

	public void setSharedDirect(Boolean sharedDirect) {
		this.sharedDirect = sharedDirect;
	}

	public String getNoOfQuestionsNotAnswered() {
		return noOfQuestionsNotAnswered;
	}

	public void setNoOfQuestionsNotAnswered(String noOfQuestionsNotAnswered) {
		this.noOfQuestionsNotAnswered = noOfQuestionsNotAnswered;
		if (getNoOfQuestionsNotAnswered() != null) {
			String[] secs = noOfQuestionsNotAnswered.split(",");
			for (String s : secs) {
				String[] s0 = s.split("-");
				if (s0.length == 1) {
					String[] s1 = new String[2];
					s1[0] = s0[0];
					s1[1] = "0.0";
					s0 = s1;
				}
				try {
					sections_noOfQuestionsNotAnswered.put(s0[0], s0[1]);
				} catch (ArrayIndexOutOfBoundsException e) {
					logger.error("problem ..." + s0, e);
					System.out.println(s0);
					e.printStackTrace();
					throw e;
				}
			}
		}
	}

	public String getDateOfInvitation() {
		if (getTestInviteSent() != null) {
			DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
			return dateFormat.format(getTestInviteSent());
		}

		return "NA";
	}

	public Map<String, String> getSections_score() {
		return sections_score;
	}

	public void setSections_score(Map<String, String> sections_score) {
		this.sections_score = sections_score;
	}

	public Map<String, String> getSections_noOfQuestionsNotAnswered() {
		return sections_noOfQuestionsNotAnswered;
	}

	public void setSections_noOfQuestionsNotAnswered(Map<String, String> sections_noOfQuestionsNotAnswered) {
		this.sections_noOfQuestionsNotAnswered = sections_noOfQuestionsNotAnswered;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getUrlForUserSession() {
		return urlForUserSession;
	}

	public void setUrlForUserSession(String urlForUserSession) {
		this.urlForUserSession = urlForUserSession;
	}

	public String getTestStartDate() {
		return testStartDate;
	}

	public void setTestStartDate(String testStartDate) {
		this.testStartDate = testStartDate;
	}

	public String getTestEndDate() {
		return testEndDate;
	}

	public void setTestEndDate(String testEndDate) {
		this.testEndDate = testEndDate;
	}
	
	//Added By Dhanshree
	//Name
	public static Comparator<AssessmentUserPerspectiveData> StuASC = new Comparator<AssessmentUserPerspectiveData>() {

		public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
		   String AssessmentUserPerspectiveDataName1 = s1.getFirstName().toUpperCase();
		   String AssessmentUserPerspectiveDataName2 = s2.getFirstName().toUpperCase();
		   //ascending order
		   return AssessmentUserPerspectiveDataName1.compareTo(AssessmentUserPerspectiveDataName2);
	    }};
	    
	 public static Comparator<AssessmentUserPerspectiveData> StuDESC = new Comparator<AssessmentUserPerspectiveData>() {
	    	
		 public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
			   String AssessmentUserPerspectiveDataName1 = s1.getFirstName().toUpperCase();
			   String AssessmentUserPerspectiveDataName2 = s2.getFirstName().toUpperCase();
			   //descending order
			   return AssessmentUserPerspectiveDataName2.compareTo(AssessmentUserPerspectiveDataName1);
		    }};
		    
	//Contact
	public static Comparator<AssessmentUserPerspectiveData> contactASC = new Comparator<AssessmentUserPerspectiveData>() {

		public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
				   String AssessmentUserPerspectiveDataName1 = s1.getEmail().toUpperCase();
				   String AssessmentUserPerspectiveDataName2 = s2.getEmail().toUpperCase();
				   //ascending order
				   return AssessmentUserPerspectiveDataName1.compareTo(AssessmentUserPerspectiveDataName2);
			    }};
		    
	public static Comparator<AssessmentUserPerspectiveData> contactDESC = new Comparator<AssessmentUserPerspectiveData>() {

		public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
					   String AssessmentUserPerspectiveDataName1 = s1.getEmail().toUpperCase();
					   String AssessmentUserPerspectiveDataName2 = s2.getEmail().toUpperCase();
					 //descending order
					   return AssessmentUserPerspectiveDataName2.compareTo(AssessmentUserPerspectiveDataName1);
		}};
		
		//TestStartDate
		public static Comparator<AssessmentUserPerspectiveData> startASC = new Comparator<AssessmentUserPerspectiveData>() {

			public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
					   String AssessmentUserPerspectiveDataName1 = s1.getTestStartDate().toUpperCase();
					   String AssessmentUserPerspectiveDataName2 = s2.getTestStartDate().toUpperCase();
					   //ascending order
					   return AssessmentUserPerspectiveDataName1.compareTo(AssessmentUserPerspectiveDataName2);
				    }};
			    
		public static Comparator<AssessmentUserPerspectiveData> startDESC = new Comparator<AssessmentUserPerspectiveData>() {

			public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
						   String AssessmentUserPerspectiveDataName1 = s1.getTestStartDate().toUpperCase();
						   String AssessmentUserPerspectiveDataName2 = s2.getTestStartDate().toUpperCase();
						 //descending order
						   return AssessmentUserPerspectiveDataName2.compareTo(AssessmentUserPerspectiveDataName1);
			}};
		
			//TestEndDate
			public static Comparator<AssessmentUserPerspectiveData> endASC = new Comparator<AssessmentUserPerspectiveData>() {

				public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
						   String AssessmentUserPerspectiveDataName1 = s1.getTestEndDate().toUpperCase();
						   String AssessmentUserPerspectiveDataName2 = s2.getTestEndDate().toUpperCase();
						   //ascending order
						   return AssessmentUserPerspectiveDataName1.compareTo(AssessmentUserPerspectiveDataName2);
					    }};
				    
			public static Comparator<AssessmentUserPerspectiveData> endDESC = new Comparator<AssessmentUserPerspectiveData>() {

				public int compare(AssessmentUserPerspectiveData s1, AssessmentUserPerspectiveData s2) {
							   String AssessmentUserPerspectiveDataName1 = s1.getTestEndDate().toUpperCase();
							   String AssessmentUserPerspectiveDataName2 = s2.getTestEndDate().toUpperCase();
							 //descending order
							   return AssessmentUserPerspectiveDataName2.compareTo(AssessmentUserPerspectiveDataName1);
				}};
			
}
