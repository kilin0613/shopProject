package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.BoardDao;
import VO.BoardVo;

public class BoardService {

	@Autowired
	BoardDao BoardDao;
	
	public void insertBoard(BoardVo BoardVo) {
		BoardDao.insertBoard(BoardVo);
		
	}
	
	public List<BoardVo> selectBoard(String product_id) {
		

		List<BoardVo> BoardVo = BoardDao.selectBoard(product_id);

		return BoardVo;
	}
	
	public void deleteBoard(BoardVo BoardVo) {
		
		BoardDao.deleteBoard(BoardVo);
	}
}
