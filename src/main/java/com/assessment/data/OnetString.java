package com.assessment.data;

import javax.persistence.Entity;

@Entity
public class OnetString extends Base {
	
	int pg;
	String result;
	String username;
	double rand;
	
	public double getRand() {
		return rand;
	}
	public void setRand(double rand) {
		this.rand = rand;
	}
	public int getPg() {
		return pg;
	}
	public String getResult() {
		return result;
	}
	public String getUsername() {
		return username;
	}
	public void setPg(int pg) {
		this.pg = pg;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "OnetString [pg=" + pg + ", result=" + result + ", username=" + username + ", rand=" + rand + "]";
	}
	

}
