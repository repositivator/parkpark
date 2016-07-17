/**
 * @FileName	AdminDataInter.java
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
package member.model;

import java.util.List;

import org.apache.shiro.dao.DataAccessException;

import member.controller.MemberBean;
import member.controller.NoticeBean;
import member.controller.ReservationBean;
import member.controller.ReviewBean;
import parkinglot.controller.S_ParkingBean;
import parkinglot.model.S_ParkingDto;

public interface AdminDataInter {
	 List selectAllMember() throws DataAccessException;   //회원데이터
	 List selectAlleval() throws DataAccessException;   //후기데이터 
	 List selectAllReservation() throws DataAccessException;   //예약데이터 
	 List selectAllParking() throws DataAccessException;   //주차장데이터
	 List selectAllnoticeboard() throws DataAccessException; //공지데이터
	 boolean noticeInsert(NoticeBean bean) throws DataAccessException;	//공지추가 
	 boolean adminMemberDelete(String code) throws DataAccessException; //회원데이터 삭제
	 boolean adminEvalDelete(String code) throws DataAccessException; //후기 데이터 삭제
	 boolean noticeDelete(String code) throws DataAccessException;	//공지 삭제
	 boolean adminparkingDelete(String code) throws DataAccessException;//주차장 삭제
	 boolean adminreservationDelete(String code) throws DataAccessException; //예약 삭제
	 MemberDto getMemberData(String code) throws DataAccessException;	//수정할 회원데이터 가져오기
	 boolean adminMemberUpdate(MemberBean bean) throws DataAccessException;//회원 수정하기
	 NoticeboardDto getNoticeboardData(int code) throws DataAccessException; //수정할 공지데이터 가져오기
	 boolean adminNoticeboardUpdate(NoticeBean bean) throws DataAccessException;//공지 수정하기
	 ReservationDto getReservationData(int code) throws DataAccessException;//수정할 예약 데이터 가져오기
	 boolean adminreservationUpdate(ReservationBean bean) throws DataAccessException;//예약 수정
	 ReviewDto getEvalData(String code) throws DataAccessException;//수정할 후기 데이터 가져오기	 
	 boolean adminEvalUpdate(ReviewBean bean) throws DataAccessException;//후기 수정하기
	 S_ParkingDto getparkingData(int code) throws DataAccessException;//수정할 주차장 데이터 가져오기
	 boolean adminparkingUpdate(S_ParkingBean bean) throws DataAccessException;//주차장 수정하기
}
