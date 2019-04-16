package com.lhsang.dashboard.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import javax.persistence.OneToMany;


import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity(name="groups")
public class Group {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String name;
	

	@OneToMany(mappedBy="group",cascade=CascadeType.ALL)
	@JsonManagedReference
	List<Category> Categories;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public List<Category> getCategories() {
		return Categories;
	}


	public void setCategories(List<Category> categories) {
		Categories = categories;
	}
	

	
}
