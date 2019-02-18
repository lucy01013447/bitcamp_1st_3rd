package com.cafe24.bitcamp.member.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cafe24.bitcamp.member.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
    private SqlSession sqlSession;

	@Override
	public List<UserVO> selectUserList() throws Exception {
		return sqlSession.selectList(Namespace+"selectUserList");
	}
	
	@Override
	public UserVO selectUser(UserVO vo) throws Exception {
		return sqlSession.selectOne(Namespace+"selectUser", vo);
	}
	
	@Override
	public int insertUser(UserVO vo) throws Exception {
		return sqlSession.insert(Namespace+"insertUser", vo);
	}
	
	@Override
	public UserVO selectUserEmail(String str) throws Exception {
		return sqlSession.selectOne(Namespace+"selectUserEmail", str);
	}
	
	@Override
	public UserVO selectUserNickname(String str) throws Exception {
		return sqlSession.selectOne(Namespace+"selectUserNickname", str);
	}
	
	@Override
	public String selectEmailHash(UserVO vo) throws Exception {
		return sqlSession.selectOne(Namespace+"selectEmailHash", vo);
	}
	
	@Override
	public int updateEmailCheck(String str) throws Exception {
		return sqlSession.update(Namespace+"updateEmailCheck", str);
	}

}
