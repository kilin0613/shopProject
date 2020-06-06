package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import DAO.MemberDao;
import VO.MemberVo;

public class MemberService {

	@Autowired
	MemberDao memberDao;

	@Transactional
	public int signUpService(MemberVo memberVo) {
		
		if (memberDao.selectMemberId(memberVo.getId()) == null) {//id 체크
			if (memberVo.getPassword().equals(memberVo.getPasswordCheck().toString())) { //pwd 체크
				memberVo.setAddress(memberVo.getAddress()+memberVo.getAddress_detail());
				memberDao.insertMember(memberVo);
				return 1;
			}
			else {
				return -1;
			}
		}
		 else {
			return -1;
		}
	}
	
	public MemberVo loginService(MemberVo memberVo) {
		
		memberVo = memberDao.selectMemberInfo(memberVo);
		if(memberVo!=null) {
			return memberVo;
		}
		
		return null;
	}
	
	public void updateInfoService(MemberVo memberVo) {
		memberDao.updateInfo(memberVo);
	}
	
	
	
}
