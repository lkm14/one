package one.project.mall.models;

import java.io.Serializable;

public class CommentVO implements Serializable {
	
	private long comment_cno;			// comment ��ȣ �⺻Ű
	private String comment_regdate;		// �ۼ��ð�
	private String comment_content;		// ����
	private String member_id;			// �ۼ��� : �ܺ�Ű
	private int boardInfo_bno;			// �Խ��ǹ�ȣ : �ܺ�Ű
	public long getComment_cno() {
		return comment_cno;
	}
	public void setComment_cno(long comment_cno) {
		this.comment_cno = comment_cno;
	}
	public String getComment_regdate() {
		return comment_regdate;
	}
	public void setComment_regdate(String comment_regdate) {
		this.comment_regdate = comment_regdate;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getBoardInfo_bno() {
		return boardInfo_bno;
	}
	public void setBoardInfo_bno(int boardInfo_bno) {
		this.boardInfo_bno = boardInfo_bno;
	}
	@Override
	public String toString() {
		return "CommentVO [comment_cno=" + comment_cno + ", comment_regdate="
				+ comment_regdate + ", comment_content=" + comment_content
				+ ", member_id=" + member_id + ", boardInfo_bno="
				+ boardInfo_bno + "]";
	}
	
	
	
}
