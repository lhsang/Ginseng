/*package com.lhsang.dashboard.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity(name="notifications")
public class Notification {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String title;
	
	private String content;
	
	User user;
	
	User fromUser;
	
	@Column(name="created_at")
	Date createdAt;
	
	int status;
	
	@Column(name="type_id")
	int type;
	
	
}*/