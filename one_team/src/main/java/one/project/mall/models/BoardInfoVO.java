package one.project.mall.models;

import java.io.Serializable;

public class BoardInfoVO implements Serializable{
	
	private int boardInfo_bno;			// 게시판 번호
	private String boardInfo_bname;		// 게시판 이름
	
	public int getBoardInfo_bno() {
		return boardInfo_bno;
	}
	public void setBoardInfo_bno(int boardInfo_bno) {
		this.boardInfo_bno = boardInfo_bno;
	}
	public String getBoardInfo_bname() {
		return boardInfo_bname;
	}
	public void setBoardInfo_bname(String boardInfo_bname) {
		this.boardInfo_bname = boardInfo_bname;
	}
	@Override
	public String toString() {
		return "BoardInfoVO [boardInfo_bno=" + boardInfo_bno
				+ ", boardInfo_bname=" + boardInfo_bname + "]";
	}
	
}
