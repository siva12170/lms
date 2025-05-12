package com.klef.jfsd.springboot.model;

import javax.validation.constraints.Digits;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity
public class Teacher {
	
	@Id
	@Digits(integer = 6, fraction = 0)
	private long id;
	@Column(nullable=false,unique = true)
	private String email;
	@Column(nullable=false)
	private String password;
	@Column(nullable=false)
	private String Gender;
	@Column(nullable=false)
	private String experience;
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
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", email=" + email + ", password=" + password + ", Gender=" + Gender
				+ ", experience=" + experience + ", role=" + role +  "]";
	}
	
	
}
