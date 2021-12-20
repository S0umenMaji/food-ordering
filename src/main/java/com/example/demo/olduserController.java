package com.example.demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class olduserController {

	@PostMapping("olduser")
	public void old(@RequestParam("uname") String uname,@RequestParam("password") String pass,HttpServletRequest request,HttpServletResponse response) {
		HttpSession session=request.getSession();
		session.setAttribute("uname",uname);
		session.setAttribute("pass", pass);
		System.out.println(uname+" "+pass);
		System.out.println("old");
		RequestDispatcher d= request.getRequestDispatcher("olddatafetch");
		try {
			d.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
