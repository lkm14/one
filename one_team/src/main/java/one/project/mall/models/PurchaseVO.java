package one.project.mall.models;

import java.io.Serializable;

public class PurchaseVO implements Serializable{
	
	private long purchase_no; 			// ���� ��ȣ : �⺻Ű
	private String purchase_regdate;	// ���� ��¥
	private int purchase_count;			// ���� ����
	private String purchase_size;		// ���� ������
	private String purchase_color;		// ���� ����
	private String purchase_bank;		// ���� ����
	private String member_id;			// ������ : ��üŰ
	private long product_no;			// ��ǰ ��ȣ : ��üŰ
	
}
