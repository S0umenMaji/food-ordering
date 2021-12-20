package com.example.demo;

import java.beans.JavaBean;
import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Entity
public class Customer implements Serializable{
   
	
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String pass;
	private String email;
	@ManyToMany(fetch=FetchType.LAZY,cascade=CascadeType.MERGE)
	@JoinTable(name="Customer_Produc",
	joinColumns= { @JoinColumn(name="Customerid")},
	inverseJoinColumns= { @JoinColumn (name="productid")}
	                  )
//	@JsonBackReference
	 Set<Product> prodct=new HashSet<>();
//	@OneToMany(targetEntity=Product.class,cascade=CascadeType.ALL)
//	@JoinColumn(name="foreignk",referencedColumnName="id")
//	private List<Product> products;
//	
	
	public Customer( String name, String pass, String email) {
		super();
		this.name = name;
		this.pass = pass;
		this.email = email;
		
	}
	public Set<Product> getProdct() {
		return prodct;
	}
	public void setProdct(Set<Product> prodct) {
		this.prodct = prodct;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", pass=" + pass + ", email=" + email + "]";
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
////	public List<Product> getProducts() {
//		return products;
//	}
//	public void setProducts(List<Product> products) {
//		this.products = products;
//	}
	
	
}
