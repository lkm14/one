package one.project.mall.board;

import one.project.mall.models.MemberVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper boardMapper;

	@Override
	public MemberVO getMember(MemberVO memberVO) throws Exception {
		return boardMapper.getMember(memberVO);
	}
}
