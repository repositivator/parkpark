package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Service
@Controller
public class StartController {

	@RequestMapping("start")
	public ModelAndView startboot(){
		// 리턴 값으로 부트스트랩 JSP 파일명을 준다
		return new ModelAndView("startBoot");
	}
}
