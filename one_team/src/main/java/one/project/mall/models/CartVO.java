package one.project.mall.models;

import java.io.Serializable;

public class CartVO implements Serializable {
//	private long cart_no;			// 장바구니 번호 : 기본키
	private String cart_regdate;	// 장바구니 담은 날짜
	private int cart_quantify;		// 구매 수량
	private String cart_size;		// 구매 사이즈
	private String cart_color;		// 구매 색상
	
	private String member_id;		// 장바구니 담은 회원 아이디 : 대체키
	private long product_no;		// 장바구니 담은 물품 번호 : 대체키
	
	
	
	
}
