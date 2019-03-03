package com.lhsang.dashboard.model;

import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

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
import com.lhsang.dashboard.utils.FormatUnit;

@Entity(name="products")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String img;
	
	private double quantity;
	
	private String unit;
	
	private int price;
	
	@Column(name="promotion_id")
	private int promotionId;

	
	private double remain;
	
	private String notes;
	
	private String description;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "product", cascade = CascadeType.ALL)
	@JsonManagedReference
	ProductManage productManage;
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="category_id")
	@JsonBackReference
	private Category category;
	
	@OneToMany(mappedBy="product")
	@JsonManagedReference
	private List<OrderDetail> orderDetails;
	
	@OneToMany(mappedBy="product",cascade=CascadeType.ALL)
	@JsonManagedReference
	List<Images> listImg;
	
	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public double getQuantity() {
		return quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPromotionId() {
		return promotionId;
	}

	public void setPromotionId(int promotionId) {
		this.promotionId = promotionId;
	}


	public double getRemain() {
		return remain;
	}

	public void setRemain(double remain) {
		this.remain = remain;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public ProductManage getProductManage() {
		return productManage;
	}

	public void setProductManage(ProductManage productManage) {
		this.productManage = productManage;
	}
	
	// only test
	public int getReviewTotal() {
		int random = (int)(Math.random() * 20 + 1);
		return random;
	}
	
	public String getRating() {
		String rating="<span class=\"fa fa-star checked\"></span>";
		String notRating="<span class=\"fa fa-star \"></span>";
		int random = (int)(Math.random() * 5 + 2);
		String ans="";
		for(int i=1;i<=5;i++) {
			if(i<=random)
				ans+=rating;
			else ans+=notRating;
		}
		return ans;
	}
	
	public String formatMoney() {
		return FormatUnit.formatMoneyToVND(price);
	}
	
	public String getNameLimitCharacter(int num) {
		num=num<=name.length()? num:name.length();
		return name.substring(0, num);
	}

	public List<Images> getListImg() {
		return listImg;
	}

	public void setListImg(List<Images> listImg) {
		this.listImg = listImg;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
