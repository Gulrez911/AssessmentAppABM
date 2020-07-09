package com.assessment.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import com.assessment.data.User;

public interface UserService {
	
	public void addUser(User user);
	
	public void updateUser(User user);
	
	public User findByPrimaryKey(String email, String companyId);
	
	public User authenticate(String user, String password, String company) ;
	
	public void saveOrUpdate(User user);
	
	public List<User> findByCompany(  String companyId);
	
	public User findById(Long id);
	
	public List<User> searchUsers(String companyId, String text);
	
	public List<String> getAllTenantSchemas() throws SQLException;
	
	//Added by Dhanshree
	
	public Optional<User> findUserByEmail(String email);
	
	public Optional<User> findUserByResetToken(String resetToken);
	
	public void saveUser(User user);

}
