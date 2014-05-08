package one.project.mall.models;
import java.io.Serializable;

public class ProductVO implements Serializable {
	
	private long product_no;			// ��ǰ ��ȣ : �⺻Ű
	private int product_price;			// ��ǰ ����
	private String product_color;		// ��ǰ ����
	private String product_size;		// ��ǰ ������
	private int product_stock;			// ��ǰ ��?
	private String product_name;		// ��ǰ �̸�
	private String product_content;		// ��ǰ ����
	private String product_image;		// ��ǰ �̹��� ���
	private int club_no;				// ���� ��ȣ : �ܺ�Ű
	private int category_no;			// ī�װ? ��ȣ : �ܺ�Ű
	
	public long getProduct_no() {
		return product_no;
	}
	public void setProduct_no(long product_no) {
		this.product_no = product_no;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public String getProduct_size() {
		return product_size;
	}
	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public int getClub_no() {
		return club_no;
	}
	public void setClub_no(int club_no) {
		this.club_no = club_no;
	}
	public int getCategory_no() {
		return category_no;
	}
	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}
	@Override
	public String toString() {
		return "ProductVO [product_no=" + product_no + ", product_price="
				+ product_price + ", product_color=" + product_color
				+ ", product_size=" + product_size + ", product_stock="
				+ product_stock + ", product_name=" + product_name
				+ ", product_content=" + product_content + ", product_image="
				+ product_image + ", club_no=" + club_no + ", category_no="
				+ category_no + "]";
	}
}
