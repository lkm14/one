package one.project.mall.models;

import java.io.Serializable;

public class BoardVO implements Serializable{
	
	private int boardInfo_bno;				// �����ȣ : �ܺ�Ű
	private long board_no;				// �Խù� ��ȣ : �⺻Ű
	private String board_title;			// �Խù� ����
	private String board_content;		// �Խù� ����
	private String board_regdate;		// �Խù� �ۼ��ð�
	private int board_count;			// �Խù� ��ȸ��
	private MemberVO memberVO;			// ȸ�� id, name�� �޾ƿ������� memberVO
	
	private int product_no;				// ��ǰ ��ȣ : �ܺ�Ű
	private String board_re_ref;		// �Խù� ���
	private int board_re_lev;			// �Խù� ��� ����
	private int board_re_seq;			// �Խù� ��� ��
	
	public int getBoard_bno() {
		return boardInfo_bno;
	}
	public void setBoard_bno(int board_bno) {
		this.boardInfo_bno = board_bno;
	}
	public long getBoard_no() {
		return board_no;
	}
	public void setBoard_no(long board_no) {
		this.board_no = board_no;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_regdate() {
		return board_regdate;
	}
	public void setBoard_regdate(String board_regdate) {
		this.board_regdate = board_regdate;
	}
	public int getBoard_count() {
		return board_count;
	}
	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getBoard_re_ref() {
		return board_re_ref;
	}
	public void setBoard_re_ref(String board_re_ref) {
		this.board_re_ref = board_re_ref;
	}
	public int getBoard_re_lev() {
		return board_re_lev;
	}
	public void setBoard_re_lev(int board_re_lev) {
		this.board_re_lev = board_re_lev;
	}
	public int getBoard_re_seq() {
		return board_re_seq;
	}
	public void setBoard_re_seq(int board_re_seq) {
		this.board_re_seq = board_re_seq;
	}
	@Override
	public String toString() {
		return "BoardVO [board_bno=" + boardInfo_bno + ", board_no=" + board_no
				+ ", board_title=" + board_title + ", board_content="
				+ board_content + ", board_regdate=" + board_regdate
				+ ", board_count=" + board_count + ", memberVO=" + memberVO
				+ ", product_no=" + product_no + ", board_re_ref="
				+ board_re_ref + ", board_re_lev=" + board_re_lev
				+ ", board_re_seq=" + board_re_seq + "]";
	}
	
}
