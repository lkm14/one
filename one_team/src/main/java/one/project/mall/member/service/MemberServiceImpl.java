package one.project.mall.member.service;

import java.util.List;

import one.project.mall.member.mapper.MemberMapper;
import one.project.mall.models.MemberVO;
import one.project.mall.models.ZipcodeVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
    
	@Autowired
	private MemberMapper MemberMapper;
    
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception {
		return MemberMapper.login(memberVO);
	}

	@Override
	public List<ZipcodeVO> searchZipcode(String area) throws Exception {
		return MemberMapper.searchZipcode(area);
	}

	@Override
	public void regist(MemberVO memberVO) throws Exception {
		MemberMapper.regist(memberVO);
	}

	@Override
	public MemberVO confirmId(String id) throws Exception {
		return MemberMapper.confirmId(id);
	}	
}
