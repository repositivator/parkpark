/**
 * @FileName   MemberDto.java
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

public class MemberDto {
   String m_name,m_email,m_passwd,m_date;
   int m_point,code;
   

   //로그인 체크 (2016.2.8 / 홍창표)
   private boolean loginCheck;
   
   //내가등록한 공유주차장 정보 
   private int s_code;       //공유주차장 고유번호
   private String s_address;   //공유주차장 주소
   private String s_image;    //공유주차장이미지
   private int s_pay;      //공유주차장요금              (2016.02.22 추가 / 홍창표)
   private int s_income;    //공유주차장 누적정산금액  (2016.02.22 추가 / 홍창표)
   private int weekday_begin_time;  //평일시작시간    (2016.02.22 추가 / 홍창표)
   private int weekday_end_time;    //평일종료시간     (2016.02.22 추가 / 홍창표)
   private int saturday_begin_time; //토요일시작시간   (2016.02.22 추가 / 홍창표)
   private int saturday_end_time;   //토요일종료시간    (2016.02.22 추가 / 홍창표)
   private int holiday_begin_time;  //일요일,공휴일 시작시간  (2016.02.22 추가 / 홍창표)
   private int holiday_end_time;    //일요일,공휴일 종료시간  (2016.02.22 추가 / 홍창표)
   
   public String getS_address() {
      return s_address;
   }

   public void setS_address(String s_address) {
      this.s_address = s_address;
   }

   public String getS_image() {
      return s_image;
   }

   public void setS_image(String s_image) {
      this.s_image = s_image;
   }
   public String getM_date() {
      return m_date;
   }
   public void setM_date(String m_date) {
      this.m_date = m_date;
   }
   
   public int getCode() {
      return code;
   }
   public void setCode(int code) {
      this.code = code;
   }
   public String getM_name() {
      return m_name;
   }
   public void setM_name(String m_name) {
      this.m_name = m_name;
   }
   public String getM_email() {
      return m_email;
   }
   public void setM_email(String m_email) {
      this.m_email = m_email;
   }
   public String getM_passwd() {
      return m_passwd;
   }
   public void setM_passwd(String m_passwd) {
      this.m_passwd = m_passwd;
   }
   public int getM_point() {
      return m_point;
   }
   public void setM_point(int m_point) {
      this.m_point = m_point;
   }

   public boolean isLoginCheck() {
      return loginCheck;
   }

   public void setLoginCheck(boolean loginCheck) {
      this.loginCheck = loginCheck;
   }

   public int getS_code() {
      return s_code;
   }

   public void setS_code(int s_code) {
      this.s_code = s_code;
   }

   public int getS_pay() {
      return s_pay;
   }

   public void setS_pay(int s_pay) {
      this.s_pay = s_pay;
   }

   public int getS_income() {
      return s_income;
   }

   public void setS_income(int s_income) {
      this.s_income = s_income;
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