package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface productrepo extends JpaRepository<Product,Integer> {

	public Product findByProductt(String s) ;
    public Product findById(int n);

}
