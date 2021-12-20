package com.example.demo.repo;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.example.demo.Customer;
@Repository
public interface Customerrepo extends JpaRepository<Customer,Integer>{

	
//	@Query("from customer c JOIN c.product p where p.foreignk=1")
//	public List<Customer> find();
//	 @Query("select new package.orderresponse(a.name, a.productName) from Customer a ")
	public Customer findByEmailAndPass(String s,String p);
}
