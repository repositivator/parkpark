/**
 * @FileName	IllegalController.java
 * @Project		boots_parkpark
 * @Author		user
 * @Date		2016. 2. 19.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author      @Description
 * 2016. 2. 19.      user      - 
 *******************************************
 */
package illegal.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class IllegalController {
	/*@Autowired
	private IllegalDataInter dataInter;*/
	
	@RequestMapping(value="illegal/illegalint", method=RequestMethod.POST)
	public String illegalInter(IllegalBean bean){
		return "illegal/illegalInsert";
	}
}
