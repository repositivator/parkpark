/**
 * @FileName   ParkingInter.java
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

package parkinglot.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import member.controller.MemberBean;
import parkinglot.controller.ParkingBean;
import parkinglot.controller.S_ParkingBean;
import parkinglot.controller.YogumBean;

public interface ParkingInter {
   //전체 공영주차장
   @Select("select * from p_parking")
   public List<P_ParkingDto> p_selectAllData();
   
   //검색된 공영주차장
   @Select("select * from p_parking where p_address like concat('%',#{searchValue},'%')")
   public List<P_ParkingDto> p_selectSearch(ParkingBean bean);
   

   //전체 공유주차장
   @Select("select * from s_parking")  
   public List<S_ParkingDto> s_selectAllData();
   
   //검색된 공유주차장
   @Select("select * from s_parking where s_address like concat('%',#{searchValue},'%')")
   public List<S_ParkingDto> s_selectSearch(ParkingBean bean);


   //우리지역 평균요금보기
   @Select("select pay from yogum where gu=#{gu}")
   public YogumDto checkYogum(YogumBean bean); 
   
   //검색된 공유주차장
   @Select("select * from s_parking where code=#{code}")
   public S_ParkingDto myParkinglotIndividualData(ParkingBean bean);

}