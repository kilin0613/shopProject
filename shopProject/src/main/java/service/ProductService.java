package service;

import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.ProductDao;
import VO.ProductVo;

public class ProductService {

	@Autowired
	ProductDao productDao;
	
	public ProductVo selectProductDetail(String product_id) {
		ProductVo productVo = (ProductVo)productDao.selectProductDetail(product_id);
		String blobToBase64 = Base64.getEncoder().encodeToString(productVo.getP_blob());
		productVo.setBlobToBase64(blobToBase64);
		return productVo; 
	}
	
	
}
