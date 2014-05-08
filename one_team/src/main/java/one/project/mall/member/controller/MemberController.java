package one.project.mall.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
	
	private Logger logger=LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/agree")
	public String agree() {
		return "member/agree";
	}
	
	
	@RequestMapping(value = "/regist",method=RequestMethod.GET)
	public String regist() {
		return "member/regist";
	}

	@RequestMapping(value = "/regist2",method=RequestMethod.GET)
	public String regist2() {
		return "member/regist2";
	}
	
	@RequestMapping(value = "/regist2", method=RequestMethod.POST)
	public String regist2Action(@Valid MemberVO memberVO,BindingResult br,HttpServletRequest request,Model model) throws Exception {
		model.addAttribute("memberVO", memberVO);
		String result="";
		if(br.hasErrors()){
			result="/member/regist2";
		}else{
			//디비에 연결해서 값 저장
			logger.info("MemberVO:"+memberVO.toString());
			String member_lastip=request.getRemoteAddr();
		    memberVO.setMember_lastip(member_lastip);// 아이피 저장
			//서비스 호출
		    memberService.regist(memberVO);//회원가입 서비스 실행
			result="redirect:/member/regist3";
		}
		return result;
	}
	
	@RequestMapping(value = "/regist3",method=RequestMethod.GET)
	public String regist3() {
		return "member/regist3";
	}
	@RequestMapping(value="/zipcode",method=RequestMethod.GET)
	public void zipcode(){}
	
	@RequestMapping(value="/zipcode",method=RequestMethod.POST)
	public void zipcodeAction(String area,Model model) throws Exception{
		List<ZipcodeVO> list=memberService.searchZipcode(area);
		model.addAttribute("area", area);
		logger.info("area:" +area);
		model.addAttribute("list", list);	
	}
	
	@RequestMapping(value="/confirmId",method=RequestMethod.GET)
	public void confirmId(){}
	
	@RequestMapping(value="/confirmId",method=RequestMethod.POST)
	public void confirmIdAction(String id, Model model) throws Exception{
		MemberVO memberVO=memberService.confirmId(id);
		//logger.info("memberVO:"+memberVO.toString());
		model.addAttribute("id", id);
		model.addAttribute("memberVO", memberVO);
	}
}
