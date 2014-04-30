package one.project.mall.models;

import java.io.Serializable;
import java.util.List;

public class OrderVO implements Serializable {
	private long order_no;					// 주문 번호 : 기본키
	private String order_regdate;			// 주문 날짜
	private int order_money;				// 주문 가격
	private List<PurchaseVO> purchaseVO;	// 구매한거
	
	
}
