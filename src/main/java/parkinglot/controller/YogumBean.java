/**
 * @FileName   YogumBean.java
 * @Project    parkpark
 * @Author     Hong Changpyo
 * @Date       2016. 2. 8.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author        @Description
 * 2016. 2. 8.   Hong Changpyo     최초 작성
 *******************************************
 */

package parkinglot.controller;

public class YogumBean {
	private String gu;  //구 이름(서울시만 해당)
	private int pay;    //30분당 요금
	
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}

	
	
}
