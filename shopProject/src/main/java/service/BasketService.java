package service;

import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.BasketDao;
import DAO.ProductDao;
import DTO.BasketDto;
import DTO.ProductDto;

public class BasketService {

	@Autowired
	BasketDao basketDao;
	@Autowired
	ProductDao productDao;

	public void insertBasket(BasketDto basketDto) {
		basketDao.insertBasket(basketDto);

	}

	public List<BasketDto> selectBasket(String customer_id) {

		List<BasketDto> orderList = basketDao.selectBasket(customer_id);
		for (int i = 0; i < orderList.size(); i++) {
			ProductDto productDto = productDao.selectProductBlob(orderList.get(i).getProduct_id());
			String blobToBase64 = Base64.getEncoder().encodeToString(productDto.getP_blob());
			orderList.get(i).setBlobToBase64((blobToBase64));
		}

		return orderList;
	}

	public void deleteBasket(BasketDto basketDto) {
		basketDao.deleteBasket(basketDto);
	}
}
