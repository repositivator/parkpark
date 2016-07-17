/**
 * @FileName   MemberController.java
 * @Project    parkpark
 * @Author     Jang HH
 * @Date       2016. 1. 29.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author        @Description
 * 2016. 1. 29.  Jang HH        최초 작성
 *******************************************
 */

package member.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.DataInter;
import member.model.ReviewDataInter;
import member.model.ReviewDto;


@Controller
@ComponentScan("parkinglot.model")
//@SessionAttributes({"emailKey", "codeKey", "myParkingList"}) //각각의 키로 저장된 attribute는 세션객체에 저장 됨 (2016.2.8 / 홍창표)
public class ReviewController {
   @Autowired
   private parkinglot.model.DataInter dataInter; //parkinglot 패키지의 dataInter활용
   
   @Autowired
   private ReviewDataInter reviewDataInter;
   
   //후기등록(전체 공유주차장 데이터 가져오기)
   @RequestMapping("member/review")
   public Model process(Model model){
      model.addAttribute("s_parkingData",dataInter.s_listAll()); //공유주차장
      return model;
   }
   
   //개별 공유주차장 별로 후기작성 form으로 가기
   //후기작성 
   @RequestMapping(value="reviewint", method=RequestMethod.POST)   
   public String reviewForm(ReviewBean bean, Model model){
	  //System.out.println(bean.getEmailKey() + " : " + bean.getS_code());  
	  //로그인 상태이면
	  if(bean.getEmailKey() != null && bean.getEmailKey() != ""){
		  ReviewBean reviewBean = reviewDataInter.getParikgData(bean.getS_code());
		  model.addAttribute("s_code",reviewBean.getS_code());
		  model.addAttribute("s_address",reviewBean.getS_address());
		  model.addAttribute("s_name",reviewBean.getS_name());
		  model.addAttribute("s_image",reviewBean.getS_image());
		  ReviewBean memberBean = reviewDataInter.getMemberData(bean.getEmailKey());
		  model.addAttribute("m_code",memberBean.getM_code());
		  model.addAttribute("m_point",memberBean.getM_point());
		  model.addAttribute("m_name",memberBean.getM_name());
		  model.addAttribute("parkingReviewlist",reviewDataInter.parkingReviewlist(bean.getS_code()));
		 // System.out.println(bean.getE_content());
		  return "member/reviewInsert";
		  
	  }else{//로그인 상태가 아니면
		  ReviewBean reviewBean = reviewDataInter.getParikgData(bean.getS_code());
	      model.addAttribute("s_code",reviewBean.getS_code());
	      model.addAttribute("s_address",reviewBean.getS_address());
	      model.addAttribute("s_name",reviewBean.getS_name());
	      model.addAttribute("s_image",reviewBean.getS_image());
	      model.addAttribute("parkingReviewlist",reviewDataInter.parkingReviewlist(bean.getS_code()));
	      return "member/reviewInsert";
	  }     
   }

   //후기 추가
   @RequestMapping(value="reviewinsert")
   public String reviewInsert(ReviewBean bean,Model model,MemberBean memberBean){
      reviewDataInter.reviewInsert(bean);
      bean.setPoint(2000);
      reviewDataInter.pointUpdate(bean);
      memberBean.setEmailKey(bean.getEmailKey());
     /* model.addAttribute("myreviewlist",reviewDataInter.reviewlist(memberBean));
      System.out.println(memberBean.getEmailKey());
      return "redirect:/member/MyReview";*/
      ReviewBean reviewBean = reviewDataInter.getParikgData(bean.getS_code());
	  model.addAttribute("s_code",reviewBean.getS_code());
	  model.addAttribute("s_address",reviewBean.getS_address());
	  model.addAttribute("s_name",reviewBean.getS_name());
	  model.addAttribute("s_image",reviewBean.getS_image());
	  ReviewBean memberRBean = reviewDataInter.getMemberData(bean.getEmailKey());
	  model.addAttribute("m_code",memberRBean.getM_code());
	  model.addAttribute("m_point",memberRBean.getM_point());
	  model.addAttribute("m_name",memberRBean.getM_name());
      model.addAttribute("parkingReviewlist",reviewDataInter.parkingReviewlist(bean.getS_code()));
      return "member/reviewInsert";
   }
   
   //후기 form으로 보내준다
   @RequestMapping(value="member/MyReview")
   public Model myReviewForm(MemberBean bean,Model model){
	   //System.out.println("내가쓴글복bean.getEmailKey());
	   model.addAttribute("myreviewlist",reviewDataInter.reviewlist(bean));
	   return model;
   }
   
   //후기 수정 form으로 보내준다
   @RequestMapping(value="member/myReviewUpdate",method=RequestMethod.POST)
   public String reviewUpdateForm(ReviewBean bean,Model model){  
	   ReviewDto dto = reviewDataInter.getReviewData(bean.getCode());
	   /*model.addAttribute("s_address",bean.getS_address());
	   model.addAttribute("s_name",bean.getS_name());
	   model.addAttribute("s_image",bean.getS_image());
	   model.addAttribute("e_score",bean.getE_score());
	   model.addAttribute("e_content",bean.getE_content());*/
	   model.addAttribute("myreviewUpdate",dto);
	   return "member/myReviewUpdate";
   }
   
   //후기 수정하기
   @RequestMapping(value="member/reviewupdate")
   public String reviewUpdate(ReviewBean bean,Model model, MemberBean memberBean){
	  reviewDataInter.reviewUpdate(bean);
	  memberBean.setEmailKey(bean.getEmailKey());
	  model.addAttribute("myreviewlist",reviewDataInter.reviewlist(memberBean));
	  return "member/MyReview";
   }
   
   //후기 삭제하기
   @RequestMapping(value="member/myReviewDelete",method=RequestMethod.POST)
   public String reviewDelete(Model model,ReviewBean bean,MemberBean memberBean){
	   boolean b = reviewDataInter.reviewDelete(bean);
	   if(b){
		   bean.setPoint(-2000);	   
		   reviewDataInter.pointUpdate(bean);
		   model.addAttribute("myreviewlist", reviewDataInter.reviewlist(memberBean)); //수정된 내 후기 정보를 새로 key값에 담는다.
		   return "member/MyReview";
	   }else{
		   System.out.println("삭제실패");
		   return "member/MyReview";
	   }
	   
   }
}