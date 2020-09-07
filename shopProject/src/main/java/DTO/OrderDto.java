package DTO;

import java.util.List;

public class OrderDto {
	private String customer_id;
	private List<BasketDto> basketDto;
	private int final_price;
	private String payment_info;
	private String address;

	@Override
	public String toString() {
		return "OrderDto [customer_id=" + customer_id + ", basketDto=" + basketDto + ", final_price=" + final_price
				+ ", payment_info=" + payment_info + ", address=" + address + "]";
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public List<BasketDto> getBasketDto() {
		return basketDto;
	}

	public void setBasketDto(List<BasketDto> basketDto) {
		this.basketDto = basketDto;
	}

	public int getFinal_price() {
		return final_price;
	}

	public void setFinal_price(int final_price) {
		this.final_price = final_price;
	}

	public String getPayment_info() {
		return payment_info;
	}

	public void setPayment_info(String payment_info) {
		this.payment_info = payment_info;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
