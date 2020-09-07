package Impl;

import java.util.List;

import DTO.DeliveryDto;
import DTO.OrderDto;

public interface OrderImpl {
	public String getColorNameService(String color_id);
	public String getSizeNameService(String size_id);
	public void orderService(OrderDto orderDto);
	public List<DeliveryDto> selectDelivery(String customer_id);
}
