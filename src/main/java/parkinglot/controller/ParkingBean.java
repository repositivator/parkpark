/**
 * @FileName   ParkingBean.java
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

public class ParkingBean { 
   //검색용
   private String searchValue;
   private boolean keywordCheck;
   
   //수정용
   private String code;
   
   
   
   public String getCode() {
	return code;
}

public void setCode(String code) {
	this.code = code;
}

public String getSearchValue() {
      return searchValue;
   }

   public void setSearchValue(String searchValue) {
      this.searchValue = searchValue;
   }

   public boolean isKeywordCheck() {
      return keywordCheck;
   }

   public void setKeywordCheck(boolean keywordCheck) {
      this.keywordCheck = keywordCheck;
   }

   
   
}