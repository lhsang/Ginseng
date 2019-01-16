package com.lhsang.dashboard.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity(name="img_product")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Images {

		@Id
		int id;
		
		String src;
		
		@ManyToOne
		@JoinColumn(name="product_id")
		@JsonBackReference
		Product product;

		String title;
		
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getSrc() {
			return src;
		}

		public void setSrc(String src) {
			this.src = src;
		}

		public Product getProduct() {
			return product;
		}

		public void setProduct(Product product) {
			this.product = product;
		}
		
		
}
