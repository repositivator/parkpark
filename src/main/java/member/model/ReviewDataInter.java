/**
 * @FileName	ReviewDataInter.java
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

import member.controller.MemberBean;
import member.controller.ReviewBean;
import parkinglot.controller.S_ParkingBean;

public interface ReviewDataInter {
	ReviewBean getParikgData(String s_code) throws DataAccessException;
	ReviewBean getMemberData(String emailKey) throws DataAccessException;
	boolean reviewInsert(ReviewBean bean) throws DataAccessException;
	boolean pointUpdate(ReviewBean bean) throws DataAccessException;
	List reviewlist(MemberBean bean) throws DataAccessException;
	boolean reviewDelete(ReviewBean bean) throws DataAccessException;
	List parkingReviewlist(String s_code) throws DataAccessException;
	ReviewDto getReviewData(String code) throws DataAccessException;	//수정할 후기 데이터 가져오기
	boolean reviewUpdate(ReviewBean bean) throws DataAccessException;	//후기 수정하기
}
