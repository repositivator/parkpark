/**
 * @FileName   DataInter.java
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

import org.apache.shiro.dao.DataAccessException;

import member.controller.MemberBean;
import parkinglot.controller.ParkingBean;
import parkinglot.controller.S_ParkingBean;
import parkinglot.controller.YogumBean;


public interface DataInter {
   List p_listAll() throws DataAccessException;                 //공영주차장 전체보기
   List s_listAll() throws DataAccessException;                 //공유주차장 전체보기
   List p_search(ParkingBean bean) throws DataAccessException;  //공영주차장 검색결과보기
   List s_search(ParkingBean bean) throws DataAccessException;  //공유주차장 검색결과보기
   int checkYogum(YogumBean bean);                              //우리지역(구단위)평균요금보기
   boolean p_check(ParkingBean bean) throws DataAccessException;  //공영주차장 검색결과판단하기
   boolean s_check(ParkingBean bean) throws DataAccessException;  //공유주차장 검색결과판단하기
   S_ParkingDto myParkinglotIndividualData(ParkingBean bean) throws DataAccessException; //내가등록한 주차장 수정화면(개별 주차장 정보 가져오기)
}