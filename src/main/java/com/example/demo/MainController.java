package com.example.demo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.repo.Customerrepo;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller

public class MainController {
	
	@Autowired
	private Customerrepo customerrep;
	@Autowired
	private productrepo prorep;
	
	@RequestMapping("/Home")
	String ma() {
		 ModelAndView modelAndview;
		System.out.println("in");
		return ("/index.jsp");
		
	}
	@PostMapping("/page/new")
	public String  home(HttpServletRequest request,HttpServletResponse response,@RequestParam("name") String name,@RequestParam("pass") String pass,@RequestParam("email") String email) {
		System.out.println("k");
		HttpSession session=request.getSession();
		session.setAttribute("uname",name);
		int l=otp.otpsend(email);
		session.setAttribute("upass",pass);
		session.setAttribute("l",l);
		session.setAttribute("uemail",email);
		return "/otp.jsp";
//		RequestDispatcher dis= request.getRequestDispatcher("index");
//		try {
//			dis.forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
@PostMapping("/page/otp")
public String f(@RequestParam("otp")String s ,HttpServletRequest request) {
	int k=Integer.parseInt(s);
	
	HttpSession session =request.getSession(false);
	String e=(String) session.getAttribute("uemail");
	String u=(String )session.getAttribute("uname");
	String p=(String)session.getAttribute("upass");
	
	int l=(int)session.getAttribute("l");
	System.out.println(l);
	if(k!=l) {
		
		return "/otp.jsp";
	}
	Customer c=new Customer();
	c.setEmail(e);
	c.setName(u);
	c.setPass(p);
	customerrep.save(c);
	return "/register.jsp";
}
@PostMapping("/page/old")
public String g(@RequestParam("name") String name,@RequestParam("pass")String pass,HttpServletRequest request,HttpServletResponse response) {
	HttpSession s=request.getSession();
//	s.invalidate();
	Customer c=customerrep.findByEmailAndPass(name,pass);
	System.out.println(c);
	if(c==null) {
		
		System.out.println("klj");
	
		return "/register.jsp";
	}
	s.setAttribute("uname",name);
	s.setAttribute("upass", pass);
	return "/address.jsp";
}
//	public int placeorder(@RequestBody String c ) throws JsonParseException, JsonMappingException, IOException {
//		 byte[] jsonData = c.toString().getBytes();
//
//	        ObjectMapper mapper = new ObjectMapper();
//	        Customer c2 = mapper.readValue(jsonData, Customer.class);
//		System.out.println(c.toString());
//		Customer c1=new Customer();
//		System.out.println("kdjf");
//		c1.setEmail(email);
//		c1.setPass(pass);
//		c1.setName(name);
//		c1.setEmail(c2.getEmail());
//		c1.setName(c2.getName());
//		c1.setPass(c2.getPass());
//		int k=otp.otpsend((email));
//		HttpSession session=request.getSession(true);
//		System.out.println(k);
//		session.setAttribute("k", k);
//		response.sendRedirect("/page/otp.jsp");
//		ModelAndView m=new ModelAndView("/page/otp.jsp");
//		return "/page/otp.jsp";
//		return "/page/otp.jsp";
//		customerrep.save(c1);
//		c1.setProducts(c2.getProducts());
//		return (customerrep.save(request.getCustomer()));
//		Customer c1=new Customer();
//		return k;
//	}
	@GetMapping("/find/{id}")
//	@Produces(MediaType.APPLICATION_JSON)
		public Optional<Customer> findbyname(@PathVariable("id")String id) {
		int i=Integer.parseInt(id);
		return (customerrep.findById(i));
		
	}
	@RequestMapping("/findall")
	public List<Customer> findall(){
		System.out.println("in");
		System.out.println(customerrep.findAll());
		return customerrep.findAll();
	}
	@GetMapping("/Login")
//	@Produces(MediaType.APPLICATION_JSON)
	public  Optional<Customer> getJoinInformation() throws JsonParseException, JsonMappingException, IOException{
//		Customer c=(customerrep.findByEmailAndPass("ghoshramkrishna1602@gmail.com","kdfdf"));
		Optional<Customer> c=(customerrep.findById(2));
		System.out.println(c);
	
	    return c;
		
//		System.out.println(jsonData);
//		  ObjectMapper mapper = new ObjectMapper();
//	        Customer c2 = mapper.readValue(jsonData, Customer.class);
	       
	}
	@GetMapping("/Product")
	 public String j(@RequestBody String a) {
//		Product p=new Product();
//		p.setCustomer(new HashSet<>(1,2));
//		p.setProductt("kjp");
//		p.setPrice(100);
//		p.setQty(3);
//		prorep.save(p);
//		for(int i=0;i<a.size();i++) {
//			Product p1=(prorep.findByProductt(a));
			System.out.println("df");
//		}
		return "l";
	}
	
	@PostMapping("/j")
	public Customer sav(@RequestBody String c) throws JsonParseException, JsonMappingException, IOException {
		byte[] jsonData = c.toString().getBytes();

        ObjectMapper mapper = new ObjectMapper();
        Customer c2 = mapper.readValue(jsonData, Customer.class);
		Customer newCustomer=new Customer();
		newCustomer.setProdct(c2.getProdct());
		newCustomer.setPass(c2.getPass());
		newCustomer.setEmail(c2.getEmail());
		 newCustomer.setName(c2.getName());
		System.out.println(c2.getProdct()+" "+c2.getPass()+" "+c2.getEmail());
//		System.out.println(Product.getCust());
//		newCustomer.getProdct()
//		.addAll(c2.getProdct()
//				.stream()
//				.map(v-> {
//					Product vv=prorep.findById(3);
//					System.out.println("in"+prorep.findById(3));
//					System.out.println("in"+vv.getCust());
////					vv.getCust ().add(newCustomer);
//					return vv;
//				}).collect(Collectors.toList()));
		System.out.println("kjkj");
				 return customerrep.save(newCustomer);
				
//				 return k;

//		newCustomer.setPass(customer.getPass());
//		newCustomer.getProdct().addAll(customer.getProdct()
//				.stream()
//				.map(v->{
//				  Customer  vv=customerrep.findById(v.getPid());
//					vv.
//				}))
				 
	}
//	@PostMapping("/i")
//	void in() {
//		
//	}
	@GetMapping("/t")
	public Customer g() {
		Customer c=(customerrep.findById(9)).get();
		c.getProdct().forEach(System.out::println);
//		Product product=prorep.getById(c.getId(3));
		return c;
	}
	
}
