package sth.project.web.board.dao;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import sth.project.web.board.dto.BoardDTO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class BoardDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//private static String namespace = "sth.project.web";
	
	//게시판 전체조회
	public List<BoardDTO> boardselectAll() {
		return sqlSessionTemplate.selectList("boardselectAll");
	}
	
	//게시판 상세조회
	public BoardDTO boardselect(int bnum) {
		return sqlSessionTemplate.selectOne("boardselect", bnum);
	}
	
	@Transactional
	//게시판 작성
	public void boardinsert(BoardDTO boardDTO) {
		sqlSessionTemplate.insert("boardinsert", boardDTO);
	}
	
	//게시판 수정
	public void boardupdate(BoardDTO boardDTO) {
		sqlSessionTemplate.update("boardupdate", boardDTO);
	}
	
	//게시판 삭제
	public void boarddelete(int bnum) {
		sqlSessionTemplate.delete("boarddelete",bnum);
	}
	
	//페이징 총갯수
	public int count() throws Exception {
		return sqlSessionTemplate.selectOne("count");
	}
	
//	//게시물 목록 + 페이징
//	public List listPage(int displayPost, int postNum) throws Exception {
//
//		 HashMap data = new HashMap();
//		  
//		 data.put("displayPost", displayPost);
//		 data.put("postNum", postNum);
//		  
//		 return sqlSessionTemplate.selectList( "listPage", data);
//		}
}
