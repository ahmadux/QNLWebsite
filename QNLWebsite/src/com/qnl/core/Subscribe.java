package com.qnl.core;

import java.io.Serializable;
import javax.persistence.*;

import java.sql.Timestamp;

@Entity
@NamedQueries({
	@NamedQuery(name="Subscribe.findByID",query="SELECT sbcr FROM Subscribe sbcr WHERE sbcr.id=:sbcrid"),
	@NamedQuery(name="Subscribe.findAll",query="SELECT sbcr FROM Subscribe sbcr"),
})
@Table(name="subscribe")
public class Subscribe implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findByID = "Subscribe.findByID";
	public static final String findAll = "Subscribe.findAll";
	
	@Id
	private int id;
	
	@Column(name="FIRST_NAME")
	private String firstName;
	
	@Column(name="LAST_NAME")
	private String lastName;
	
	@Column(name="TELEPHONE")
	private String telephone;
	
	@Column(name="MOBILE")
	private String mobile;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="NATIONALITY")
	private String nationality;
	
	@Column(name="DATE_OF_BIRTH")
	private Timestamp dateOfBirth;
	
	@Column(name="QF_EMPLOYEE")
	private byte qfEmployee;
	
	@Column(name="FIELD_OF_INTEREST")
	private String fieldOfInterest;
	
	public Subscribe(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Timestamp getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Timestamp dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public byte getQfEmployee() {
		return qfEmployee;
	}

	public void setQfEmployee(byte qfEmployee) {
		this.qfEmployee = qfEmployee;
	}

	public String getFieldOfInterest() {
		return fieldOfInterest;
	}

	public void setFieldOfInterest(String fieldOfInterest) {
		this.fieldOfInterest = fieldOfInterest;
	}

}
