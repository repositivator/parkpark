/**
 * @FileName	ReviewImpl.java
 * @Project		parkpark_hh
 * @Author		user
 * @Date		2016. 2. 12.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author      @Description
 * 2016. 2. 12.      user      - 
 *******************************************
 */
package member.model;

import java.util.List;

import org.apache.shiro.dao.DataAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.controller.MemberBean;
import member.controller.ReviewBean;

@Repository
public class ReviewImpl implements ReviewDataInter{
	@Autowired
	private ReviewInter reviewInter;
	

	//s_parking에 코드를 이용해서 주차장 주소와 이미지 불러오기
	@Override
	public ReviewBean getParikgData(String s_code) throws DataAccessException {
		ReviewBean reviewbean = reviewInter.getParikgData(s_code);
		return reviewbean;
	}


	@Override
	public ReviewBean getMemberData(String emailKey) throws DataAccessException {
		ReviewBean reviewbean = reviewInter.getMemberData(emailKey);
		return reviewbean;
	}
	

	@Override
	public boolean reviewInsert(ReviewBean bean) throws DataAccessException {
		return reviewInter.reviewInsert(bean);
	}



	@Override
	public boolean pointUpdate(ReviewBean bean) throws DataAccessException {
		
		return reviewInter.pointUpdate(bean);
	}


	@Override
	public List reviewlist(MemberBean bean) throws DataAccessException {
		return reviewInter.reviewlist(bean);
	}


	@Override
	public boolean reviewDelete(ReviewBean bean) throws DataAccessException {
		boolean b = reviewInter.reviewDelete(bean);
		//System.out.println(b);
		return b;
	}



	@Override
	public List parkingReviewlist(String s_code) throws DataAccessException {
		return reviewInter.parkingReviewlist(s_code);
	}

	//후기 수정을 위한 데이터 가져오기
	@Override
	public ReviewDto getReviewData(String code) throws DataAccessException {
		return reviewInter.getReviewData(code);
	}



	@Override
	public boolean reviewUpdate(ReviewBean bean) throws DataAccessException {
		// TODO Auto-generated method stub
		return reviewInter.reviewUpdate(bean);
	}

	


}
