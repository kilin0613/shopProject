package DTO;

public class DeliveryDto {
	private String product_name;
	private String color;
	private String size_name;
	private String address;
	private int quantity;
	private String payment_info;
	private String status;
	private int total_price;
	private byte[] p_blob;
	private String blobToBase64;

	@Override
	public String toString() {
		return "DeliveryDto [product_name=" + product_name + ", color=" + color + ", size_name=" + size_name
				+ ", address=" + address + ", quantity=" + quantity + ", payment_info=" + payment_info + ", status="
				+ status + ", total_price=" + total_price + "]";
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

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize_name() {
		return size_name;
	}

	public void setSize_name(String size_name) {
		this.size_name = size_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getPayment_info() {
		return payment_info;
	}

	public void setPayment_info(String payment_info) {
		this.payment_info = payment_info;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

}
