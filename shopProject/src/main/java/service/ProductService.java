package service;

import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.ProductDao;
import VO.ColorVo;
import VO.ProductVo;

public class ProductService {

	@Autowired
	ProductDao productDao;
	
	
	public List<ColorVo> selectProductColor(String product_id){
		return productDao.selectProductColor(product_id);
	}
	
	
	public ProductVo selectProductDetail(String product_id) {
		ProductVo productVo = (ProductVo)productDao.selectProductDetail(product_id);
		String blobToBase64 = Base64.getEncoder().encodeToString(productVo.getP_blob());
		productVo.setBlobToBase64(blobToBase64);
		return productVo; 
	}
	
	public List<ProductVo> selectCategoryService(String category1,String category2) {

	      List<ProductVo> productVo = productDao.selectCategy(category1,category2);

	      for (int i = 0; i < productVo.size(); i++) {
	         String blobToBase64 = Base64.getEncoder().encodeToString(productVo.get(i).getP_blob());
	         productVo.get(i).setBlobToBase64(blobToBase64);
	      }
	      return productVo;
	   }
	
	public List<ProductVo> selectProductSearch(String keyword) {
		List<ProductVo>productVo = productDao.selectProductSearch(keyword);
		for(int i=0;i<productVo.size();i++) {
			String blobToBase64 = Base64.getEncoder().encodeToString(productVo.get(i).getP_blob());
			productVo.get(i).setBlobToBase64(blobToBase64);
		}
		return productVo;
	}
	
}
