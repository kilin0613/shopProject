package DTO;

public class ProductDto {

	private String name;
	private String product_id;
	private int price;
	private byte[] p_blob;
	private String blobToBase64;

	@Override
	public String toString() {
		return "ProductDto [name=" + name + ", product_id=" + product_id + ", price=" + price + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

}
