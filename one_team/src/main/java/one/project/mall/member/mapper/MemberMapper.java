package one.project.mall.member.mapper;

import java.util.List;

import one.project.mall.models.MemberVO;
import one.project.mall.models.ZipcodeVO;

public interface MemberMapper {
	public MemberVO login(MemberVO memberVO);//회원 로그인
	public List<ZipcodeVO> searchZipcode(String area);
	public void regist(MemberVO memberVO);// 회원가입
	public MemberVO confirmId(String id);//회원아이디 중복검사
}
