package kosta.bean;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kosta.mapper.BoardMapper;
import kosta.mapper.MemberMapper;

public class MemberDAO {
	private static MemberDAO dao = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public List<Member> listMember() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Member> list = null;
		
		try {
			// mapper interface 방식
			list = sqlSession.getMapper(MemberMapper.class).listMember();
			
			// SqlSession의 CRUD 메서드 방식
			//list = sqlSession.selectList("kosta.mapper.MemberMapper.listMember");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		
		return list;
	}
	
	public int insertMember(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(MemberMapper.class).insertMember(member);
			
			// insert, update, delete문은 트랜잭션 처리를 꼭 해주어야 한다.
			if(re > 0) {
				sqlSession.commit();
			}
			else {
				sqlSession.rollback();
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		
		return re;
	}
}
