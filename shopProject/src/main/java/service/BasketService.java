package service;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.BasketDao;
import DAO.ProductDao;
import VO.BasketVo;
import VO.ProductVo;

public class BasketService {

   @Autowired
   BasketDao basketDao;
   @Autowired
   ProductDao productDao;
   
   
   public void insertBasket(BasketVo basketVo) {
      basketDao.insertBasket(basketVo);
      
   }
   
   public List<BasketVo> selectBasket(String customer_id) {
      
      List<BasketVo> basketVo = basketDao.selectBasket(customer_id);
      
	      for(int i=0;i<basketVo.size();i++) {
	      String product_id = basketVo.get(i).getProduct_id();
	      
	      int price = productDao.selectProductPrice(product_id);
	      basketVo.get(i).setPrice(price*basketVo.get(i).getQuantity());
	      
	      ProductVo productVo =  productDao.selectProductBlob(product_id);
	      String blobToBase64 = Base64.getEncoder().encodeToString(productVo.getP_blob());
	     
	      basketVo.get(i).setP_blob(blobToBase64);
      }
    
      
      return basketVo;
   }
   
   
   public void deleteBasket(BasketVo basketVo) {
      basketDao.deleteBasket(basketVo);
   }
}