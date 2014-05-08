package one.project.mall.member.service;

import java.util.List;

import one.project.mall.member.mapper.UserMapper;
import one.project.mall.models.MemberVO;
import one.project.mall.models.ZipcodeVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
    
	@Autowired
	private UserMapper UserMapper;



	@Override
	public List<ZipcodeVO> searchZipcode(String area) throws Exception {
		return UserMapper.searchZipcode(area);
	}

	@Override
	public void regist(MemberVO memberVO) throws Exception {
	   UserMapper.regist(memberVO);
	}

	@Override
	public MemberVO confirmId(String id) throws Exception {
		return UserMapper.confirmId(id);
	}
}
