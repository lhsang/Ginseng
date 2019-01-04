/*package com.lhsang.dashboard.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity(name="import")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class ImportProduct {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int id;
		
		private String name;
		
		private Date date;
		
		@Column(name="sum_money")
		private long sumMoney;
		
		@ManyToOne(fetch =FetchType.LAZY)
		@JoinColumn(name="staff_id")
		@JsonBackReference
		private User staff;
		
		private Company company;
		
		@OneToMany(mappedBy="products")
		@JoinColumn(name="product_id")
		@JsonManagedReference
		private List<Product> products;

		private String notes;
		
		@OneToOne(fetch = FetchType.LAZY, mappedBy = "product", cascade = CascadeType.ALL)
		@JsonManagedReference
		ProductManage productManage;
		
		
		@OneToMany(mappedBy="product")
		@JsonManagedReference
		private List<OrderDetail> orderDetails;
}
*/