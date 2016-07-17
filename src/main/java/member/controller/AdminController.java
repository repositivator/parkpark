/**
 * @FileName	AdminController.java
 * @Project		boots_parkpark
 * @Author		user
 * @Date		2016. 2. 23.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author      @Description
 * 2016. 2. 23.      user      - 
 *******************************************
 */
package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.AdminDataInter;
import member.model.MemberDto;
import member.model.NoticeboardDto;
import member.model.ReservationDto;
import member.model.ReviewDto;
import parkinglot.controller.ParkingBean;
import parkinglot.controller.S_ParkingBean;
import parkinglot.model.S_ParkingDto;

@Controller
@ComponentScan("member.model")
public class AdminController {
	@Autowired
	private AdminDataInter dataInter;
	
	//회원정보확인 -- 관리자용
	@RequestMapping("admin/memberList")		
	public Model process(Model model){
		model.addAttribute("memberlist",dataInter.selectAllMember());
		return model;
	}
	
	//회원삭제 -- 관리자용
	@RequestMapping("admin/memberDelete")
	public String adminMemberDelete(String code,Model model){
		boolean b = dataInter.adminMemberDelete(code);
		if(b){
			model.addAttribute("memberlist",dataInter.selectAllMember());
			return "admin/memberList";
		}else{
			System.out.println("삭제실패");
			return "admin/memberList";
		}
		
	}
	
	//회원수정 form으로 보내기 -- 관리자용
	@RequestMapping("admin/memberUpdate")
	public String adminMemberUpdateForm(MemberBean bean,Model model){
		MemberDto dto = dataInter.getMemberData(bean.getCode());
		model.addAttribute("adminMemberUpdate",dto);
		return "admin/memberUpdate";
	}
	
	//회원 수정 -- 관리자용
	@RequestMapping("admin/adminMemberUpdate")
	public String adminMemberUpdate(MemberBean bean,Model model){
		dataInter.adminMemberUpdate(bean);
		model.addAttribute("memberlist",dataInter.selectAllMember());
		return "admin/memberList";	
	}
	
	//후기확인 -- 관리자용
	@RequestMapping("admin/evalList")
	public Model evalList(Model model){
		model.addAttribute("evallist",dataInter.selectAlleval());
		return model;
	}
	
	//후기삭제 -- 관리자용
	@RequestMapping("admin/adminevalDelete")
	public String adminEvalDelete(String code,Model model){
		boolean b = dataInter.adminEvalDelete(code);
		if(b){
			model.addAttribute("evallist",dataInter.selectAlleval());
			return "admin/evalList";
		}else{
			System.out.println("삭제실패");
			return "admin/evalList";
		}
	}
	
	//후기 수정 form으로 보내주기 adminevalUpdateForm
	@RequestMapping("admin/adminevalUpdateForm")
	public String adminevalUpdateForm(ReviewBean bean,Model model){
		ReviewDto dto = dataInter.getEvalData(bean.getCode());
		model.addAttribute("adminevalUpdate",dto);
		return "admin/evalUpdate";
	}
	
	//후기 수정
	@RequestMapping("admin/ adminEvalUpdate")
	public String adminEvalUpdate(ReviewBean bean,Model model){
		dataInter.adminEvalUpdate(bean);
		model.addAttribute("evallist",dataInter.selectAlleval());
		return "admin/evalList";	
	}
	
	//예약확인 -- 관리자용
	@RequestMapping("admin/reservationList")
	public Model reservationList(Model model){
		model.addAttribute("reservationlist",dataInter.selectAllReservation());
		return model;
	}
	
	//예약삭제
	@RequestMapping("admin/adminreservationDelete")
	public String adminreservationDelete(String code,Model model){
		boolean b = dataInter.adminreservationDelete(code);
		if(b){
			model.addAttribute("reservationlist",dataInter.selectAllReservation());
			return "admin/reservationList";
		}else{
			System.out.println("삭제실패");
			return "admin/reservationList";
		}
	}
	
	//예약 수정form으로 보내기
	@RequestMapping("admin/adminreservationUpdate")
	public String adminreservationUpdateForm(ReservationBean bean,Model model){
		ReservationDto dto = dataInter.getReservationData(bean.getCode());
		model.addAttribute("adminReservationUpdate",dto);
		return "admin/reservationUpdate";
	}
	
	//예약 수정 adminReservationUpdate
	@RequestMapping("admin/adminReservationUpdate")
	public String adminReservationUpdate(ReservationBean bean,Model model){
		dataInter.adminreservationUpdate(bean);
		model.addAttribute("reservationlist",dataInter.selectAllReservation());
		return "admin/reservationList";	
	}
	
	//주차장확인 -- 관리자용
	@RequestMapping("admin/parkingList")
	public Model parkingList(Model model){
		model.addAttribute("parkinglist",dataInter.selectAllParking());
		return model;
	}
	
	//주차장 삭제
	@RequestMapping("admin/adminparkingDelete")
	public String adminparkingDelete(String code,Model model){
		boolean b = dataInter.adminparkingDelete(code);
		if(b){
			model.addAttribute("parkinglist",dataInter.selectAllParking());
			return "admin/parkingList";
		}else{
			System.out.println("삭제실패");
			return "admin/parkingList";
		}
		
	}
	
	//주차장 수정 form으로 보내주기 
	@RequestMapping("admin/adminparkingUpdateForm")
	public String adminparkingUpdateForm(S_ParkingBean bean,Model model){
		S_ParkingDto dto = dataInter.getparkingData(bean.getCode());
		model.addAttribute("adminparkingUpdate",dto);
		return "admin/parkingUpdate";
	}
	
	//주차장 수정
	@RequestMapping("admin/adminparkingUpdate")
	public String adminparkingUpdate(S_ParkingBean bean,Model model){
		dataInter.adminparkingUpdate(bean);
		model.addAttribute("parkinglist",dataInter.selectAllParking());
		return "admin/parkingList";
	}
	
	//공지확인 -- 관리자용
	@RequestMapping("admin/noticeboardList")
	public Model noticeboardList(Model model){
		model.addAttribute("noticeboardlist",dataInter.selectAllnoticeboard());
		return model;
	}
	
	//공지사항 입력form으로 보내기
	@RequestMapping("admin/noticeboardWrite")
	public String noticeForm(){
		return "admin/noticeboardWrite";
	}
	
	//공지 등록
	@RequestMapping(value="admin/noticeinsert")
	public String noticeInesert(NoticeBean bean,Model model){
		dataInter.noticeInsert(bean);
		model.addAttribute("noticeboardlist",dataInter.selectAllnoticeboard());
		return "admin/noticeboardList";
	}
	
	//공지 삭제 -- 관리자용
	@RequestMapping("admin/noticeboardDelete")
	public String noticeDelete(String code,Model model){
		boolean b = dataInter.noticeDelete(code);
		if(b){
			model.addAttribute("noticeboardlist",dataInter.selectAllnoticeboard());
			return "admin/noticeboardList";
		}else{
			System.out.println("삭제실패");
			return "admin/noticeboardList";
		}		
	}
	
	//공지 수정 form으로 보내기
	@RequestMapping("admin/noticeboardUpdate")
	public String noticeboardUpdateForm(NoticeBean bean,Model model){
		NoticeboardDto dto = dataInter.getNoticeboardData(bean.getCode());
		model.addAttribute("noticeboardUpdate",dto); 
		return "admin/noticeboardUpdate";
	}
	
	//공지 수정
	@RequestMapping("admin/adminnoticeBoardUpdate")
	public String noticeboardUpdate(NoticeBean bean,Model model){
		dataInter.adminNoticeboardUpdate(bean);
		model.addAttribute("noticeboardlist",dataInter.selectAllnoticeboard());
		return "admin/noticeboardList";	
	}
}
