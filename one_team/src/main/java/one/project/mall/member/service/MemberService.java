package one.project.mall.member.service;

import java.util.List;

import one.project.mall.models.MemberVO;
import one.project.mall.models.ZipcodeVO;

public interface MemberService {
	public MemberVO login(MemberVO memberVO)throws Exception;// 회원 로그인
	public void regist(MemberVO memberVO)throws Exception;// 회원가입
	public List<ZipcodeVO> searchZipcode(String area) throws Exception;// 우편번호 검색
	public MemberVO confirmId(String id)throws Exception;// 회원 아이디 중복체크
}
