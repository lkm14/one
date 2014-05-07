package one.project.mall.board;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import one.project.mall.models.MemberVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
//	@RequestMapping(value="/login", method=RequestMethod.GET)
//	public ModelAndView login() {
//		ModelAndView mav = new ModelAndView("../views/main");
//		return mav;
//	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(MemberVO memberVO, HttpSession session, HttpServletResponse response) {
		
		//memberVO.setMember_pwd(DigestUtils.md5Hex(memberVO.getMember_pwd()));
		ModelAndView mav = new ModelAndView("result");
		try {
			MemberVO memberInfo = memberService.getMember(memberVO);
			session.setAttribute("member_id", memberInfo.getMember_id());
			session.setAttribute("member_name", memberInfo.getMember_name());
			session.setAttribute("member_level", memberInfo.getMember_level());
			Cookie cookie = new Cookie("member_id", memberInfo.getMember_id());
			cookie.setMaxAge(24*60*60*30);
			response.addCookie(cookie);
			
			mav.addObject("msg", memberInfo.getMember_id()+"("+memberInfo.getMember_name()+")"+"님이 로그인 되었습니다.");
			mav.addObject("url", "../main/");
			
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("msg", "로그인에 실패하였습니다.");
			mav.addObject("url", "../main/");
		}
		
		return mav;
	}
	
}
