package com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userId;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	@Column(name="phone_number", nullable=false)
	private int phoneNumber;
	@Column(nullable=false)
	private String email;
	@Column(nullable=false)
	private String password;
	private String avtar;
	@Column(name="why_i_volunteer")
	private String whyIVolunteer;
	@Column(name="employee_id")
	private String employeeId;
	private String department;
	@Column(name="country_id")
	private Long countryId;
	@Column(name="city_id")
	private Long cityId;
	@Column(name="profile_text")
	private String profileText;
	@Column(name="linked_in_url")
	private String linkedInUrl;
	private String title;
	
	enum E {
		  FALSE,
		  TRUE
	}
	
	private E status;
	@Column(name="created_at")
	private Date createdAt;
	@Column(name="updated_at")
	private Date updatedAt;
	@Column(name="deleted_at")
	private Date deletedAt;
}
