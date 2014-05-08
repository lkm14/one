package one.project.mall.models;

import java.io.Serializable;
import java.util.List;

public class OrderVO implements Serializable {
	private long order_no;					// �ֹ� ��ȣ : �⺻Ű
	private String order_regdate;			// �ֹ� ��¥
	private int order_money;				// �ֹ� ����
	private List<PurchaseVO> purchaseVO;	// �����Ѱ�
	
	
}
