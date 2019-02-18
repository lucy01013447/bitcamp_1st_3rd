package com.cafe24.bitcamp.member.dao;

import java.util.List;
import com.cafe24.bitcamp.member.domain.UserVO;


public interface UserDAO {
	public final String Namespace = "member.userMapper.";
	public List<UserVO> selectUserList() throws Exception;
	public UserVO selectUser(UserVO vo) throws Exception;
	public int insertUser(UserVO vo) throws Exception;
	public UserVO selectUserEmail(String str) throws Exception;
	public UserVO selectUserNickname(String str) throws Exception;
	public String selectEmailHash(UserVO vo) throws Exception;
	public int updateEmailCheck(String str) throws Exception;
}
