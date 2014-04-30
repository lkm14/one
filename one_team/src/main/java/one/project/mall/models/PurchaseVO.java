package one.project.mall.models;

import java.io.Serializable;

public class PurchaseVO implements Serializable{
	
	private long purchase_no; 			// 구매 번호 : 기본키
	private String purchase_regdate;	// 구매 날짜
	private int purchase_count;			// 구매 수량
	private String purchase_size;		// 구매 사이즈
	private String purchase_color;		// 구매 색상
	private String purchase_bank;		// 구매 은행
	private String member_id;			// 구매자 : 대체키
	private long product_no;			// 상품 번호 : 대체키
	
}
