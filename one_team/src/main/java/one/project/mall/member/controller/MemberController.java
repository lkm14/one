package one.project.mall.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import one.project.mall.member.service.MemberService;
import one.project.mall.models.MemberVO;
import one.project.mall.models.ZipcodeVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginAction(MemberVO memberVO, HttpSession session,
			HttpServletRequest request) throws Exception {
		
		String result="redirect:../main/";
		
		MemberVO member = memberService.login(memberVO);// 서비스 호출(디비에서 유저정보 가져오기)
        
		if (member != null) {
			session.setAttribute("user", member.getMember_id());
			session.setAttribute("user_name", member.getMember_name());
			session.setAttribute("level", member.getMember_level());
		    
			if(member.getMember_id().equals("admin")&&member.getMember_id().equals("1234567")){
		    	 result="redirect:../admin/main/";
		     }
		}
		return result;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model){
		String user=(String)session.getAttribute("user");
		model.addAttribute("msg", user+"님이 로그아웃하였습니다.");
		model.addAttribute("url", "../main/");
		session.invalidate();
		return "result";
	}
	
	@RequestMapping(value = "/agree", method = RequestMethod.GET)
	public String agree() {
		return "member/agree";
	}

	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String regist() {
		return "member/regist";
	}

	@RequestMapping(value = "/regist2", method = RequestMethod.GET)
	public String regist2() {
		return "member/regist2";
	}

	@RequestMapping(value = "/regist2", method = RequestMethod.POST)
	public String regist2Action(@Valid MemberVO memberVO, BindingResult br,
			HttpServletRequest request, Model model) throws Exception {
		model.addAttribute("memberVO", memberVO);
		String result = "";
		if (br.hasErrors()) {
			result = "/member/regist2";
		} else {
			// 디비에 연결해서 값 저장
			logger.info("MemberVO:" + memberVO.toString());
			String member_lastip = request.getRemoteAddr();
			memberVO.setMember_lastip(member_lastip);// 아이피 저장
			// 서비스 호출
			memberService.regist(memberVO);// 회원가입 서비스 실행
			result = "redirect:/member/regist3";
			/* result="redirect:../"; */
		}
		return result;
	}

	@RequestMapping(value = "/regist3", method = RequestMethod.GET)
	public String regist3() {
		return "member/regist3";
	}

	@RequestMapping(value = "/zipcode", method = RequestMethod.GET)
	public void zipcode() {
	}

	@RequestMapping(value = "/zipcode", method = RequestMethod.POST)
	public void zipcodeAction(String area, Model model) throws Exception {
		List<ZipcodeVO> list = memberService.searchZipcode(area);
		model.addAttribute("area", area);
		logger.info("area:" + area);
		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/confirmId", method = RequestMethod.GET)
	public void confirmId() {
	}

	@RequestMapping(value = "/confirmId", method = RequestMethod.POST)
	public void confirmIdAction(String id, Model model) throws Exception {
		MemberVO memberVO = memberService.confirmId(id);
		// logger.info("memberVO:"+memberVO.toString());
		model.addAttribute("id", id);
		model.addAttribute("memberVO", memberVO);
	}
}
