package one.project.mall.member;

import one.project.mall.models.MemberVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public MemberVO getMember(MemberVO memberVO) throws Exception {
		return memberMapper.getMember(memberVO);
	}
}
