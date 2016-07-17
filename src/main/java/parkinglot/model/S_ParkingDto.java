/**
 * @FileName   S_ParkingDto.java
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

import org.springframework.web.multipart.MultipartFile;

// s_parking(공유주차장) 테이블 Dto
public class S_ParkingDto {
   private int code;         // 고유번호
   private int m_code;         // 등록자 번호
   private String s_name;      // 이름
   private String s_address;   // 주소
   private String s_phone;      // 전화번호(안심번호)
   private String s_image;      // 주차장 이미지(파일이름)
   private int s_pay;         // 요금(30분 당)
   private String s_schedule;   // 이용가능 시간대
   private int s_income;      // 누적 정산금액
   private int s_report;      // 불법주차 신고횟수
   private String lat;         // 위도
   private String lng;         // 경도
   private MultipartFile uploadfile; //파일업로드
   private int weekday_begin_time;  //평일시작시간
   private int weekday_end_time;    //평일종료시간
   private int saturday_begin_time; //토요일시작시간
   private int saturday_end_time;   //토요일종료시간
   private int holiday_begin_time;  //일요일,공휴일 시작시간
   private int holiday_end_time;    //일요일,공휴일 종료시간
   
   public int getCode() {
      return code;
   }
   public void setCode(int code) {
      this.code = code;
   }
   public int getM_code() {
      return m_code;
   }
   public void setM_code(int m_code) {
      this.m_code = m_code;
   }
   public String getS_name() {
      return s_name;
   }
   public void setS_name(String s_name) {
      this.s_name = s_name;
   }
   public String getS_address() {
      return s_address;
   }
   public void setS_address(String s_address) {
      this.s_address = s_address;
   }
   public String getS_phone() {
      return s_phone;
   }
   public void setS_phone(String s_phone) {
      this.s_phone = s_phone;
   }

   public String getS_image() {
      return s_image;
   }
   public void setS_image(String s_image) {
      this.s_image = s_image;
   }
   public int getS_pay() {
      return s_pay;
   }
   public void setS_pay(int s_pay) {
      this.s_pay = s_pay;
   }
   public String getS_schedule() {
      return s_schedule;
   }
   public void setS_schedule(String s_schedule) {
      this.s_schedule = s_schedule;
   }
   public int getS_income() {
      return s_income;
   }
   public void setS_income(int s_income) {
      this.s_income = s_income;
   }
   public int getS_report() {
      return s_report;
   }
   public void setS_report(int s_report) {
      this.s_report = s_report;
   }
   public String getLat() {
      return lat;
   }
   public void setLat(String lat) {
      this.lat = lat;
   }
   public String getLng() {
      return lng;
   }
   public void setLng(String lng) {
      this.lng = lng;
   }
   
    public MultipartFile getUploadfile() {
        return uploadfile;
    }
 
    public void setUploadfile(MultipartFile uploadfile) {
        this.uploadfile = uploadfile;
    }
   public int getWeekday_begin_time() {
      return weekday_begin_time;
   }
   public void setWeekday_begin_time(int weekday_begin_time) {
      this.weekday_begin_time = weekday_begin_time;
   }
   public int getWeekday_end_time() {
      return weekday_end_time;
   }
   public void setWeekday_end_time(int weekday_end_time) {
      this.weekday_end_time = weekday_end_time;
   }
   public int getSaturday_begin_time() {
      return saturday_begin_time;
   }
   public void setSaturday_begin_time(int saturday_begin_time) {
      this.saturday_begin_time = saturday_begin_time;
   }
   public int getSaturday_end_time() {
      return saturday_end_time;
   }
   public void setSaturday_end_time(int saturday_end_time) {
      this.saturday_end_time = saturday_end_time;
   }
   public int getHoliday_begin_time() {
      return holiday_begin_time;
   }
   public void setHoliday_begin_time(int holiday_begin_time) {
      this.holiday_begin_time = holiday_begin_time;
   }
   public int getHoliday_end_time() {
      return holiday_end_time;
   }
   public void setHoliday_end_time(int holiday_end_time) {
      this.holiday_end_time = holiday_end_time;
   }   
    
}