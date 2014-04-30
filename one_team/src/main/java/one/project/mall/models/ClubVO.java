package one.project.mall.models;

import java.io.Serializable;

public class ClubVO implements Serializable {
	private int club_no;		// 구단 번호
	private String club_name;	// 구단 이름
	
	public int getClub_no() {
		return club_no;
	}
	public void setClub_no(int club_no) {
		this.club_no = club_no;
	}
	public String getClub_name() {
		return club_name;
	}
	public void setClub_name(String club_name) {
		this.club_name = club_name;
	}
	@Override
	public String toString() {
		return "ClubVO [club_no=" + club_no + ", club_name=" + club_name + "]";
	}
	
	
}
