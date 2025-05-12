package com.klef.jfsd.springboot.model;

import javax.validation.constraints.Digits;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Student {

	@Id
	@Digits(integer = 10, fraction = 0)
	private long id;
	@Column(nullable=false,unique = true)
	private String email;
	@Column(nullable=false)
	private String password;
	@Column(nullable=false)
	private String Gender;
	@Column(nullable=false)
	private boolean active;
	@Column(nullable = false)
	private String role;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", email=" + email + ", password=" + password + ", Gender=" + Gender + ", active="
				+ active + ", role=" + role + "]";
	}
	
}
