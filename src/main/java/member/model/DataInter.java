/**
 * @FileName   DataInter.java
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

package member.model;

import java.util.List;

import org.apache.shiro.dao.DataAccessException;

import member.controller.MemberBean;
import parkinglot.controller.S_ParkingBean;

public interface DataInter {
  
   boolean memberInsert(MemberBean bean) throws DataAccessException; //회원정보 insert
   boolean checkEmail(MemberBean bean) throws DataAccessException; //이메일중복검사
   MemberBean checkLogin(MemberBean bean) throws DataAccessException;//로그인체크   boolean->MemberBean으로 수정(2016.2.8 / 홍창표)
   List checkParking(MemberBean bean) throws DataAccessException; //내가 등록한 주차장 보기 
   boolean pwdCheck(MemberBean bean) throws DataAccessException;//비밀번호체크
   boolean memberUpdate(MemberBean bean) throws DataAccessException; //회원정보수정
   boolean memberDelete(String m_email) throws DataAccessException;   //회원탈퇴
   List reserlist(MemberBean bean) throws DataAccessException;	//내가 예약한 주차장보기
   boolean myParkingDelete(S_ParkingBean bean) throws DataAccessException;                //내가 등록한 주차장 삭제하기
   boolean shareInsert(S_ParkingBean bean) throws DataAccessException;                  //공유주차장등록
   boolean shareModify(S_ParkingBean bean) throws DataAccessException;			     //공유정보수정
   List notiveboardList() throws DataAccessException;
   
}