package com.cafe24.bitcamp.member.service;

import java.util.List;
import com.cafe24.bitcamp.member.domain.UserVO;

public interface UserService {
	 public List<UserVO> selectUserList() throws Exception;
	 
	 public UserVO userLogin(UserVO vo) throws Exception;
	 public int userRegister(UserVO vo) throws Exception;
	 public String confirmEmail(String str) throws Exception;
	 public String confirmNickname(String str) throws Exception;
	 
	 public String authEmailHash(UserVO vo) throws Exception;
	 public int changeEmailCheck(String str) throws Exception;
}
