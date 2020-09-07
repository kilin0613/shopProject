package service;

import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.ProductDao;
import DTO.ProductDto;

public class MainService {

	@Autowired
	ProductDao productDao;
	
	public List<ProductDto> selectMainProduct() {
	
		List<ProductDto> productDto = productDao.selectMainProduct();
	
		for(int i=0;i<productDto.size();i++) {
			String blobToBase64 = Base64.getEncoder().encodeToString(productDto.get(i).getP_blob());
			productDto.get(i).setBlobToBase64(blobToBase64);
		}
		return productDto;
	}

}
