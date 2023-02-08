package sth.project.web.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import sth.project.web.member.dao.MemberDAO;
import sth.project.web.member.dto.MemberDTO;

//빈으로 비즈니스 로직 스캔을 구성한다.
@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	//회원 전체조회
	public List<MemberDTO> memberSelectAll() {
		return memberDAO.memberselectAll();
	}
	
	//회원 상세조회
	public MemberDTO memberSelect(String id) {
		return memberDAO.select(id);
	}
	
	//회원 가입
	public void memberInsert(MemberDTO memberDTO) {
		try {
			memberDAO.memberinsert(memberDTO);
		} catch(DataIntegrityViolationException e) {
			e.printStackTrace();
		}
	}
	
	//회원 수정
	public void memberUpdate(MemberDTO memberDTO) {
		memberDAO.memberupdate(memberDTO);
	}
	
	//회원 삭제
	public void memberDelete(String id) {
		memberDAO.memberdelete(id);
	}
	
	//로그인
	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		return memberDAO.login(memberDTO);
	}
	
}
