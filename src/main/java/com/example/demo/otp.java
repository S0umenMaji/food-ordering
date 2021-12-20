	package com.example.demo;

	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;

			

				import java.util.Properties;

			import javax.mail.Message;
			import javax.mail.MessagingException;
			import javax.mail.PasswordAuthentication;
			import javax.mail.Session;
			import javax.mail.Transport;
			import javax.mail.internet.InternetAddress;
			import javax.mail.internet.MimeMessage;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpSession;

//			@Controller
			public class otp {
//				@RequestMapping("otp")
			public static  int otpsend(String to) {
int ran;
			      // Recipient's email ID needs to be mentioned.
//					HttpSession ses=request.getSession(false);
//			      String to = (String) ses.getAttribute("uemail");
//			      System.out.println(to);
			      // Sender's email ID needs to be mentioned
			      String from = "";//Sender email
			      final String username = "";//Sender username
			      final String password = "";//Sender password

			      // Assuming you are sending email through relay.jangosmtp.net
			      String host = "smtp.gmail.com";

			      Properties props = new Properties();
			      props.put("mail.smtp.auth", "true");
			      props.put("mail.smtp.starttls.enable", "true");
			      props.put("mail.smtp.host", host);
			      props.put("mail.smtp.port", "25");

			      // Get the Session object.
			      Session session = Session.getInstance(props,
			         new javax.mail.Authenticator() {
			            protected PasswordAuthentication getPasswordAuthentication() {
			               return new PasswordAuthentication(username, password);
				   }
			         });

			      try {
				   // Create a default MimeMessage object.
				   Message message = new MimeMessage(session);
				
				   // Set From: header field of the header.
				   message.setFrom(new InternetAddress(from));
				
				   // Set To: header field of the header.
				   message.setRecipients(Message.RecipientType.TO,
			               InternetAddress.parse(to));
				
				   // Set Subject: header field
				   message.setSubject("OTP Verificaton");
				   double randomNum = Math.random() * ( 999999 -444444 );
			       ran=(int)randomNum;
//			      ses.setAttribute("otp",ran);
				   // Now set the actual message
				   message.setText("your Otp is:"+(int)randomNum);

				   // Send message
				   Transport.send(message);

				   System.out.println("Sent message successfully....");
			      } catch (MessagingException e) {
			         throw new RuntimeException(e);
			      }
			      return ran;
			   }}
			





