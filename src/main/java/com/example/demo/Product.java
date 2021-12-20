package com.example.demo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.xml.bind.annotation.XmlTransient;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
public class Product implements Serializable {
	@Id
	@GeneratedValue
     private int pid;
     private  String productt;
     private int qty;
     private int price;
     public Product() {
    	super();
		// TODO Auto-generated constructor stub
	}
     
	@ManyToMany(fetch=FetchType.LAZY,cascade=CascadeType.MERGE,mappedBy="prodct")
	@JsonIgnore
	private Set<Customer> cust=new HashSet<>();
     public Set<Customer> getCust() {
		return cust;
	}
//	void setCustomer(HashSet<Customer> cust) {
//		this.cust = cust;
//	}
	
     public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getProductt() {
//		System.out.println("in"+productt);
		return productt;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", product=" + productt + ", qty=" + qty + ", price=" + price + "]";
	}
//	public void setProductt(Set<Product> prodct) {
//		this.productt = prodct;
//	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
//	public int getPrice() {
//		return price;
//	}
	public void setPrice(int price) {
		this.price = price;
	}
public void setCust(Set<Customer> cust) {
		this.cust = cust;
	}
	//	public static List<Product> getProductt() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	public void setProductt(Set<Product> prodct) {
//		// TODO Auto-generated method stub
//		
//	}
	public void setProductt(String prodct) {
		// TODO Auto-generated method stub
		
		this.productt=prodct;
	}
	public int getPrice() {
		// TODO Auto-generated method stub
		return price;
	}
	
	
	
}
