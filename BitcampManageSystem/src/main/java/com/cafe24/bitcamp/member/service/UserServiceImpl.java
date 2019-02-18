package com.cafe24.bitcamp.member.service;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.cafe24.bitcamp.member.dao.UserDAO;
import com.cafe24.bitcamp.member.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
    private UserDAO dao;

	@Override
	public List<UserVO> selectUserList() throws Exception {
		return dao.selectUserList();
	}
	
	@Override
	public UserVO userLogin(UserVO vo) throws Exception {
		return dao.selectUser(vo);
	}
	
	@Override
	public int userRegister(UserVO vo) throws Exception {
		return dao.insertUser(vo);
	}
	
	@Override
	public String confirmEmail(String str) throws Exception {
		if(dao.selectUserEmail(str) == null) {
			return "T";
		}else {
			return "F";
		}
	}
	
	@Override
	public String confirmNickname(String str) throws Exception {
		if(dao.selectUserNickname(str) == null) {
			return "T";
		}else {
			return "F";
		}
	}
	
	@Override
	public String authEmailHash(UserVO vo) throws Exception {
		return dao.selectEmailHash(vo);
	}
	
	@Override
	public int changeEmailCheck(String str) throws Exception {
		return dao.updateEmailCheck(str);
	}
	
	

}
