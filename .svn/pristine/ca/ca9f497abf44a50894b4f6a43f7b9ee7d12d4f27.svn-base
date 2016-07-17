package serviceinfo.controller;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import serviceinfo.controller.EmailBean;


@Service
public class MailService {
	
	@Autowired(required=false)
	private JavaMailSender mailSender;
	
	
	// 메일전송모듈
	public void sendMail(EmailBean sendMail) {
		// 메일의 메시지 처리 MimeMessage
		MimeMessage msg = mailSender.createMimeMessage();
		try {
			
			MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true, "UTF-8");
			String mailContent = 
//					"<iframe class=‘margin-bottom’ width=‘100%’ height=‘350’ src=‘http://maps.google.com/maps?f=q&source=s_q&hl=kr&geocode=&q=yeoksam-dong%2B819-10&ie=UTF8&z=17&t=m&iwloc=near&output=embed’></iframe>"
					"<hr><center><h2 style='color: #38d3ff'>(주)주차팍팍님께 접수된 1:1 문의입니다.</h2></center><hr>"
					+ "<br><b>제목</b><br>"
					+ "<p style='margin-left: 50px;'>"+ sendMail.getSubject() +"</p><br><br>"
					+ "<b>고객 연락처</b><br>"
					+ "<p style='margin-left: 50px;'>"+ sendMail.getContactPoint() +"</p><br><br>"
					+ "<b>내용</b><br>"
					+ "<p style='margin-left: 50px;'>"+ sendMail.getContent() +"</p><br><hr>"
					+ "<center><img src = 'https://s3-ap-northeast-1.amazonaws.com/image-parkpark/parkpark_map.jpg' style='width: 95%;'></center>";
			
	
			messageHelper.setTo("repositivator@gmail.com");
			
			msg.setContent(mailContent, "text/html; charset=utf-8");
			messageHelper.setFrom("(주차팍팍)repositivator@gmail.com");
			messageHelper.setSubject(sendMail.getSubject());

			// 수신자 설정
			msg.setRecipient(RecipientType.TO, new InternetAddress(sendMail.getReceiver()));
			
			mailSender.send(msg);
			
		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.println("메일발송 에러발생" + e.getMessage());
		}
	}
}



/*
// 메일 발송을 위한 메소드 (예전 버전)
@Autowired
private JavaMailSender mailSender;

@RequestMapping(value="serviceinfo/mail.do")
public void mailSender(){
	try {
			String content = "test 입니다";
			String subject = "메일 제목입니다.";
					"회원님의 임의 비밀번호는 ["+authNum2+"] 입니다."
					+ "  로그인 하신 후에 회원수정에서 원하시는 비밀번호로 변경 가능합니다."
					+ "<br/><a href='http://localhost:8080/passcode2/index.jsp'>패스코드 로그인 하러 가기</a>"; 
								
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setTo("repositivator@gmail.com");
			//messageHelper.setText("환영합니다.");
			message.setContent(content, "text/html; charset=utf-8");
			messageHelper.setFrom("(주차팍팍)repositivator@gmail.com");
			messageHelper.setSubject(subject);	// 메일제목은 생략이 가능하다
			
			mailSender.send(message);
			
	} catch(Exception e){
		System.out.println(e);
	}
}
*/