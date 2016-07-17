/**
 * @FileName	MailSenderCtrl.java
 * @Project		boots_parkpark
 * @Author		Dave
 * @Date		2016. 2. 23.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author      @Description
 * 2016. 2. 23.      Dave      - 
 *******************************************
 */
package serviceinfo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


// http://localhost:8080/boots_parkpark/serviceinfo/personalContact 
@Controller
@RequestMapping("serviceinfo/personalContact")
public class MailSenderCtrl {

	
	@Autowired(required=false)
	private MailService service;
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String form(){
		return "serviceinfo/personalContact";
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public String send(EmailBean smail, Model mailModel){
		
		smail.setReceiver("repositivator@gmail.com"); 		// 메일 수신자 지정 -> 주차팍팍 관리자 메일
		
		// 들어오는 결과값 확인용 SYSO
//		System.out.println("제목:"+smail.getSubject());
//		System.out.println("내용:"+smail.getContent());
//		System.out.println("연락처:"+smail.getContactPoint());
//		System.out.println("수신자:"+smail.getReceiver());
		
		service.sendMail(smail);
		mailModel.addAttribute("isSend", "Y");
		
		return "serviceinfo/personalContact";
	}
		

}
