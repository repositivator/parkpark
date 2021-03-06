/**
 * @FileName	ReviewDto.java
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

public class ReviewDto {
	String code,s_code,m_code,m_name,e_date,e_score,e_content;
	String s_name,r_date,r_begin_time,r_end_time,s_address,s_image;
	int r_pay;

	public String getCode() {
		return code;
	}


	/**
	 * @return the s_address
	 */
	public String getS_address() {
		return s_address;
	}


	/**
	 * @param s_address the s_address to set
	 */
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}


	/**
	 * @return the s_image
	 */
	public String getS_image() {
		return s_image;
	}


	/**
	 * @param s_image the s_image to set
	 */
	public void setS_image(String s_image) {
		this.s_image = s_image;
	}


	public String getS_name() {
		return s_name;
	}


	public void setS_name(String s_name) {
		this.s_name = s_name;
	}


	public String getR_date() {
		return r_date;
	}


	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getR_begin_time() {
		return r_begin_time;
	}


	public void setR_begin_time(String r_begin_time) {
		this.r_begin_time = r_begin_time;
	}


	public String getR_end_time() {
		return r_end_time;
	}



	public void setR_end_time(String r_end_time) {
		this.r_end_time = r_end_time;
	}


	public int getR_pay() {
		return r_pay;
	}


	public void setR_pay(int r_pay) {
		this.r_pay = r_pay;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getS_code() {
		return s_code;
	}


	public void setS_code(String s_code) {
		this.s_code = s_code;
	}


	public String getM_code() {
		return m_code;
	}


	public void setM_code(String m_code) {
		this.m_code = m_code;
	}


	public String getM_name() {
		return m_name;
	}


	public void setM_name(String m_name) {
		this.m_name = m_name;
	}


	public String getE_date() {
		return e_date;
	}


	public void setE_date(String e_date) {
		this.e_date = e_date;
	}


	public String getE_score() {
		return e_score;
	}


	public void setE_score(String e_score) {
		this.e_score = e_score;
	}


	public String getE_content() {
		return e_content;
	}


	public void setE_content(String e_content) {
		this.e_content = e_content;
	}
	
	
}
