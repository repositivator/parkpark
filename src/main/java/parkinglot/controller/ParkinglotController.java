/**
 * @FileName   SearchController.java
 * @Project    parkpark
 * @Author     Hong Changpyo
 * @Date       2016. 1. 29.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author        @Description
 * 2016. 1. 29.  Hong Changpyo     최초 작성
 *******************************************
 */

package parkinglot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.controller.MemberBean;
import parkinglot.model.DataInter;
import parkinglot.model.S_ParkingDto;

@Controller
@ComponentScan("parkinglot.model")
public class ParkinglotController {
   
   @Autowired
   private DataInter dataInter;

   //지도화면 : 전체 주차장 출력 (viewfile : map_search.jsp)
   @RequestMapping("parkinglot/map_search")
   public Model MapProcess(Model model){
      model.addAttribute("data",dataInter.p_listAll());  //공영주차장
      model.addAttribute("data2",dataInter.s_listAll()); //공유주차장
      model.addAttribute("keywordCheck", false); //키워드 여부를 "keywordCheck" key로 담음
      model.addAttribute("resultIsS", false);
      return model;
   }

   //주차장 검색
   @RequestMapping(value="parkinglot/search",method=RequestMethod.POST)
   public ModelAndView p_searchProcess(ParkingBean bean){
      ModelAndView modelAndView = new ModelAndView();
      List list = dataInter.p_search(bean); //공영주차장 데이터
      List list2 = dataInter.s_search(bean); //공유주차장 데이터
      
      boolean p_check = dataInter.p_check(bean);  //공영주차장 검색결과 판단(결과 있으면 true)
      boolean s_check = dataInter.s_check(bean);  //공유주차장 검색결과 판단(결과 있으면 true)
      
      modelAndView.setViewName("parkinglot/map_search");
      modelAndView.addObject("data", list);  //공영주차장 데이터를  "data" key로 담음
      modelAndView.addObject("data2", list2); //공유주차장 데이터를 "data2" key로 담음
      if(p_check || s_check){ //검색결과가 둘 중 하나라도 있으면  
         if(s_check){ //공유주차장 우선으로
            modelAndView.addObject("keywordCheck", true); //키워드 존재하고
            modelAndView.addObject("resultIsS", true);    //공유주차장검색결과이다
         }else if(p_check){ //공영주차장은 차선이다
            modelAndView.addObject("keywordCheck", true); //키워드 존재하고
            modelAndView.addObject("resultIsS", false);   //공영주차장검색결과이다
         }else{
            System.out.println("검색결과 판단 오류");
         }
      }else{ // 검색결과가 전혀 없으면 
         modelAndView.addObject("keywordCheck", false); //키워드 여부를 "keywordCheck" key로 담음   
         modelAndView.addObject("resultIsS", false);
         modelAndView.addObject("alertCheck", "alert");
      }
               
      return modelAndView;
   }

   //주차장 등록화면(viewfile : registration.jsp)
   @RequestMapping("parkinglot/registration")
   public Model registrationProcess(Model model){
      return model;
   }

   
   // 우리지역 요금 확인
   @RequestMapping(value="parkinglot/guValue",method=RequestMethod.POST)
   @ResponseBody   //json방식으로 return하려면 필요
   public int checkYogumProcess(YogumBean bean){
      int pay_avg = dataInter.checkYogum(bean); 
      return pay_avg;
   }   
   
   // 내가 등록한 주차장 보기
   @RequestMapping(value="parkinglot/myParkingList")
   public Model myParkingListProcess(Model model){
      return model;
   }
   
   // 공유주차장 수정화면으로 보내기 (2016.02.22 / 홍창표)
	@RequestMapping(value="parkinglot/myParkingModify")
	public String shareModify(ParkingBean parkingBean, Model model){
		S_ParkingDto dto = dataInter.myParkinglotIndividualData(parkingBean);
		
		//주소를 가지고 구 구하기(방법1)
		String imsi = dto.getS_address().trim(); //앞뒤공백제거
		//String gu0 = imsi.split(" ")[0];
		String gu = imsi.split(" ")[1];
		//String gu2 = imsi.split(" ")[2];
		//String gu3 = imsi.split(" ")[3];
		//System.out.println(gu0 + " : " + gu + " : " + gu2 + " : " + gu3);

		

		//구를 가지고 요금구하기
		YogumBean yogumBean = new YogumBean();
		yogumBean.setGu(gu);  
		int pay_avg = dataInter.checkYogum(yogumBean);
		model.addAttribute("pay_avg", pay_avg);           //구 평균 요금 보내기
		
		
		model.addAttribute("updateValue", dto);  //수정할 공유주차장 기본 정보 보내기  
		return "parkinglot/myParkingModify";
	}
   
}

