package sth.project.web.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import sth.project.web.board.dao.BoardDAO;
import sth.project.web.board.dto.BoardDTO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	//게시판 전체조회
	public List<BoardDTO> boardSelectAll() {
		return boardDAO.boardselectAll();
	}
	
	//게시판 상세조회
	public BoardDTO boardSelect(int bnum) {
		return boardDAO.boardselect(bnum);
	}
	
	//게시판 작성
	public void boardInsert(BoardDTO boardDTO) {
		try {
			boardDAO.boardinsert(boardDTO);
		} catch(DataIntegrityViolationException e) {
			e.printStackTrace();
		}
	}
	
	//게시판 수정
	public void boardUpdate(BoardDTO boardDTO) {
		boardDAO.boardupdate(boardDTO);
	}
	
	//게시판 삭제
	public void boardDelete (int bnum) {
		boardDAO.boarddelete(bnum);
	}
	
	//페이징 총 갯수
	public int count() throws Exception {
		return boardDAO.count();
	}

//	// 게시물 목록 + 페이징
//	public List listPage(int displayPost, int postNum) throws Exception {
//	 return boardDAO.listPage(displayPost, postNum);
//	}
}
