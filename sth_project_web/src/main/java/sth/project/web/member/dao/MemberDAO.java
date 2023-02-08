package sth.project.web.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import sth.project.web.member.dto.MemberDTO;

//빈으로 데이터베이스 스캔을 구성한다.
@Repository

@EnableAspectJAutoProxy(proxyTargetClass = true)
public class MemberDAO {
	
	//의존관계를 자동으로 설정한다.
	@Autowired
	//sqlsession 인터페이스의 모든 기능을 구현한다.
	SqlSessionTemplate sqlSessionTemplate;
	
	//전체조회
	public List<MemberDTO> memberselectAll() {
		return sqlSessionTemplate.selectList("memberselectAll");
	}
	
	//상세조회
	public MemberDTO select(String id) {
		return sqlSessionTemplate.selectOne("memberselect", id);
	}
	
	//회원가입
	@Transactional
	
	public void memberinsert(MemberDTO memberDTO) {
		sqlSessionTemplate.insert("memberinsert", memberDTO);
	}
	
	//회원수정
	public void memberupdate(MemberDTO memberDTO) {
		sqlSessionTemplate.update("memberupdate", memberDTO);
	}
	
	//회원 삭제
	public void memberdelete(String id) {
		sqlSessionTemplate.delete("memberdelete", id);
	}
	
	//로그인
	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		return sqlSessionTemplate.selectOne("login", memberDTO);
		
	}
	
}