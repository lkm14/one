package one.project.mall.models;

import java.io.Serializable;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class MemberVO implements Serializable {

	@NotBlank
	private String member_id;
	@Length(min=4, max=15)
	private String member_pwd;
	@NotBlank
	private String member_name;

	private String member_birth;
	@NotBlank
	private String member_email;
	@NotBlank
	private String member_phone;

	private String member_zipcode;

	@NotBlank
	private String member_addr1;
	@NotBlank
	private String member_addr2;
	
	
	private String member_regdate;
	private String member_lastip;
	private int member_level;
	private int member_point;

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_birth() {
		return member_birth;
	}

	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_zipcode() {
		return member_zipcode;
	}

	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}

	public String getMember_addr1() {
		return member_addr1;
	}

	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}

	public String getMember_addr2() {
		return member_addr2;
	}

	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}

	public String getMember_regdate() {
		return member_regdate;
	}

	public void setMember_regdate(String member_regdate) {
		this.member_regdate = member_regdate;
	}

	public String getMember_lastip() {
		return member_lastip;
	}

	public void setMember_lastip(String member_lastip) {
		this.member_lastip = member_lastip;
	}

	public int getMember_level() {
		return member_level;
	}

	public void setMember_level(int member_level) {
		this.member_level = member_level;
	}

	public int getMember_point() {
		return member_point;
	}

	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}

	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", member_pwd="
				+ member_pwd + ", member_name=" + member_name
				+ ", member_birth=" + member_birth + ", member_email="
				+ member_email + ", member_phone=" + member_phone
				+ ", member_zipcode=" + member_zipcode + ", member_addr1="
				+ member_addr1 + ", member_addr2=" + member_addr2
				+ ", member_regdate=" + member_regdate + ", member_lastip="
				+ member_lastip + ", member_level=" + member_level
				+ ", member_point=" + member_point + "]";
	}

}
