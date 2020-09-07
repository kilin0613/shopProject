package DTO;

public class BasketDto {
	private String customer_id;
	private String product_name;
	private String product_id;
	private byte[] p_blob;
	private String blobToBase64;
	private String color;
	private String color_id;
	private String size_name;
	private String size_id;
	private int quantity;
	private int total_price;

	@Override
	public String toString() {
		return "BasketDto [customer_id=" + customer_id + ", product_name=" + product_name + ", product_id=" + product_id
				+ ", color=" + color + ", color_id=" + color_id + ", size_name=" + size_name + ", size_id=" + size_id
				+ ", quantity=" + quantity + ", total_price=" + total_price + "]";
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public byte[] getP_blob() {
		return p_blob;
	}

	public void setP_blob(byte[] p_blob) {
		this.p_blob = p_blob;
	}

	public String getBlobToBase64() {
		return blobToBase64;
	}

	public void setBlobToBase64(String blobToBase64) {
		this.blobToBase64 = blobToBase64;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getColor_id() {
		return color_id;
	}

	public void setColor_id(String color_id) {
		this.color_id = color_id;
	}

	public String getSize_name() {
		return size_name;
	}

	public void setSize_name(String size_name) {
		this.size_name = size_name;
	}

	public String getSize_id() {
		return size_id;
	}

	public void setSize_id(String size_id) {
		this.size_id = size_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

}
