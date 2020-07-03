package com.assessment.data;

import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CacheConcurrencyStrategy;
/**
 * pk - email & companyId
 * @author jsutaria
 *
 */
@Entity
@Cacheable
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User extends Base{
	@NotNull
	 String email;
	 String mobileNumber;
	 String firstName;
	 String lastName;
	 
	 
	 int otp;
	 
	String resetToken;
	 @NotNull
	 String password;
	 String department;
	@Enumerated(EnumType.STRING)
	private UserType userType = UserType.STUDENT;
	
	String groupOfUser;
	
	String grade;
	
	Boolean internalUser;
	
	String verificationStatus;
	
	@Transient
	private String type;
	
	@Transient
	Boolean selected;
	
	@Transient
	String confirmPassword;
	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public UserType getUserType() {
		return userType;
	}
	public void setUserType(UserType userType) {
		this.userType = userType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getInternalUser() {
		return internalUser;
	}
	public void setInternalUser(Boolean internalUser) {
		this.internalUser = internalUser;
	}
	
	
	public String getGroupOfUser() {
		return groupOfUser;
	}
	public void setGroupOfUser(String groupOfUser) {
		this.groupOfUser = groupOfUser;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getType() {
		return getUserType().getType();
	}
	public void setType(String type) {
		this.type = type;
		setUserType(UserType.valueOf(type));
	}
	public Boolean getSelected() {
		return selected;
	}
	public void setSelected(Boolean selected) {
		this.selected = selected;
	}
	
	
	public int getOtp() {
		return otp;
	}
	public void setOtp(int otp) {
		this.otp = otp;
	}
	public String getVerificationStatus() {
		return verificationStatus;
	}
	public void setVerificationStatus(String verificationStatus) {
		this.verificationStatus = verificationStatus;
	}
	
	public String getResetToken() {
		return resetToken;
	}
	public void setResetToken(String resetToken) {
		this.resetToken = resetToken;
	}
	
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
	@Override
	public int hashCode() {
			if(getId() == null) {
				return (getEmail()+getCompanyId()).hashCode();
			}
		return getId().hashCode();
	}
	
	@Override
	public boolean equals(Object object) {
		if(! (object instanceof User)) {
			return false;
		}
		
		User dto = (User) object;
		if(dto.hashCode() == hashCode()) {
			return true;
		}
		
		return false;
	}
	
	@Override
	public String toString() {
		return "User [email=" + email + ", mobileNumber=" + mobileNumber + ", firstName=" + firstName + ", lastName="
				+ lastName + ", otp=" + otp + ", resetToken=" + resetToken + ", password=" + password + ", department="
				+ department + ", userType=" + userType + ", groupOfUser=" + groupOfUser + ", grade=" + grade
				+ ", internalUser=" + internalUser + ", verificationStatus=" + verificationStatus + ", type=" + type
				+ ", selected=" + selected + ", confirmPassword=" + confirmPassword + "]";
	}
	
	

	
	
}
