/**
 * @FileName	AdminImpl.java
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.controller.MemberBean;
import member.controller.NoticeBean;
import member.controller.ReservationBean;
import member.controller.ReviewBean;
import parkinglot.controller.S_ParkingBean;
import parkinglot.model.S_ParkingDto;

@Repository
public class AdminImpl implements AdminDataInter{
	 @Autowired
	 private AdminInter adminInter;
	 
	 //회원리스트(관리자용) 
	 @Override
	   public List selectAllMember() throws DataAccessException {
	      return adminInter.selectAllMember();
	   }

	 //후기리스트(관리자용)
	@Override
	public List selectAlleval() throws DataAccessException {
		return adminInter.selectAlleval();
	}

	//예약리스트(관리자용)
	@Override
	public List selectAllReservation() throws DataAccessException {
		return adminInter.selectAllReservation();
	}

	//주차장리스트(관리자용)
	@Override
	public List selectAllParking() throws DataAccessException {
		return adminInter.selectAllParking();
	}

	//회원 삭제
	@Override
	public boolean adminMemberDelete(String code) throws DataAccessException {
		boolean b = adminInter.adminMemberDelete(code);
		return b;
	}

	//후기 삭제
	@Override
	public boolean adminEvalDelete(String code) throws DataAccessException {
		boolean b = adminInter.adminEvalDelete(code);
		return b;
	}

	//공지 리스트
	@Override
	public List selectAllnoticeboard() throws DataAccessException {
		return adminInter.selectAllnoticeboard();
	}

	//공지 추가
	@Override
	public boolean noticeInsert(NoticeBean bean) throws DataAccessException {
		return adminInter.noticeInsert(bean);
	}

	//공지 삭제
	@Override
	public boolean noticeDelete(String code) throws DataAccessException {
		boolean b = adminInter.noticeDelete(code);
		return b;
	}

	//주차장 삭제
	@Override
	public boolean adminparkingDelete(String code) throws DataAccessException {
		boolean b = adminInter.adminparkingDelete(code);
		return b;
	}

	//후기 삭제
	@Override
	public boolean adminreservationDelete(String code) throws DataAccessException {
		boolean b = adminInter.adminreservationDelete(code);
		return b;
	}

	//멤버 수정을 위해 데이터 가져오기
	@Override
	public MemberDto getMemberData(String code) throws DataAccessException {
		return adminInter.getMemberData(code);
	}
	
	//회원정보 수정하기
	@Override
	public boolean adminMemberUpdate(MemberBean bean) throws DataAccessException {
		return adminInter.adminMemberUpdate(bean);
	}

	//공지 수정을 위해 데이터 가져오기
	@Override
	public NoticeboardDto getNoticeboardData(int code) throws DataAccessException {
		return adminInter.getNoticeboardData(code);
	}
	
	//공지 수정
	@Override
	public boolean adminNoticeboardUpdate(NoticeBean bean) throws DataAccessException {
		return adminInter.adminNoticeboardUpdate(bean);
	}
	
	//예약 수정을 위해 데이터 가져오기
	@Override
	public ReservationDto getReservationData(int code) throws DataAccessException {
		return adminInter.getReservationData(code);
	}
	
	//예약 수정
	@Override
	public boolean adminreservationUpdate(ReservationBean bean) throws DataAccessException {
		return adminInter.adminreservationUpdate(bean);
	}
	
	//후기 수정을 위해 데이터 가져오기
	@Override
	public ReviewDto getEvalData(String code) throws DataAccessException {
		return adminInter.getEvalData(code);
	}

	//후기 수정하기
	@Override
	public boolean adminEvalUpdate(ReviewBean bean) throws DataAccessException {
		return adminInter.adminEvalUpdate(bean);
	}
	
	//주차장 수정을 위해 데이터 가져오기
	@Override
	public S_ParkingDto getparkingData(int code) throws DataAccessException {
		return adminInter.getparkingData(code);
	}

	//주차장 수정하기
	@Override
	public boolean adminparkingUpdate(S_ParkingBean bean) throws DataAccessException {
		return adminInter.adminparkingUpdate(bean);
	}
	
}
