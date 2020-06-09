package service;

import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.ProductDao;
import VO.ProductVo;

public class MainService {

	@Autowired
	ProductDao productDao;
	
	public List<ProductVo> selectMainProduct() {
	
		List<ProductVo> productVo = productDao.selectMainProduct();
	
		for(int i=0;i<productVo.size();i++) {
			String blobToBase64 = Base64.getEncoder().encodeToString(productVo.get(i).getP_blob());
			productVo.get(i).setBlobToBase64(blobToBase64);
		}
		return productVo;
	}

}
