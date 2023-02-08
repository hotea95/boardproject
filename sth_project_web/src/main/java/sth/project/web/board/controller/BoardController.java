package sth.project.web.board.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sth.project.web.board.dto.BoardDTO;
import sth.project.web.board.service.BoardService;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	//게시판 전체조회
	@RequestMapping(value = "/BoardSelect", method = RequestMethod.GET)
	public String boardlist(Model model, HttpServletRequest request) {
		
		if(!loginCheck(request))
			return "redirect:/";
			 
			
		model.addAttribute("list", boardService.boardSelectAll());
		logger.info("list", model);
		return "board/board_select_all_view";
	}
	
	private boolean loginCheck(HttpServletRequest request) {
		//1. 세션을 얻어서
		HttpSession session = request.getSession();
		//2. 세션에 id가 있는지 확인, 있으면 true를 반환

		return session.getAttribute("id")!=null;
	}

	//게시판 상세조회
	@RequestMapping(value = "/BoardSelectDetail", method = RequestMethod.GET)
	public String boarddetail(Model model, BoardDTO boardDTO) {
		model.addAttribute("boardDTO", boardService.boardSelect(boardDTO.getBnum()));
		return "./board/board_select_detail_view";
	}
	
	//게시판작성
	@RequestMapping(value = "/BoardInsert", method = RequestMethod.GET)
	public String boardinsert() {
		return "./board/board_insert";
	}
	
	@RequestMapping(value = "/BoardInsert", method = RequestMethod.POST)
	public String boardinsert(Model model, BoardDTO boardDTO) {
		model.addAttribute("list", boardService.boardSelectAll());
		boardService.boardInsert(boardDTO);
		return "./board/board_insert_view";
	}
	
	//게시판수정
	@RequestMapping(value = "/BoardUpdate", method = RequestMethod.GET)
	public String boardupdate(Model model, BoardDTO boardDTO) {
		model.addAttribute("boardDTO", boardService.boardSelect(boardDTO.getBnum()));
		return "./board/board_update";
	}
	
	@RequestMapping(value = "/BoardUpdate", method = RequestMethod.POST)
	public String boardupdate(BoardDTO boardDTO) {
		boardService.boardUpdate(boardDTO);
		return "./board/board_update_view";
	}
	
	//게시물 삭제
	@RequestMapping(value = "/BoardDelete", method = RequestMethod.GET)
	public String boarddelete() {
		return "./board/board_delete";
	}
	
	@RequestMapping(value = "/BoardDelete", method = RequestMethod.POST)
	public String delete(BoardDTO boardDTO) {
		boardService.boardDelete(boardDTO.getBnum());
		return "./board/board_delete_view";
	}
	
	// 게시물 목록 + 페이징 추가
//	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
//	public String getListPage(Model model, @RequestParam("num") int num) throws Exception {
//	 
//	 // 게시물 총 갯수W
//	 int count = boardService.count();
//	  
//	 // 한 페이지에 출력할 게시물 갯수
//	 int postNum = 10;
//	  
//	 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
//	 int pageNum = (int)Math.ceil((double)count/postNum);
//	  
//	 // 출력할 게시물
//	 int displayPost = (num - 1) * postNum;
//	 
//	// 한번에 표시할 페이징 번호의 갯수
//	 int pageNum_cnt = 10;
//
//	 // 표시되는 페이지 번호 중 마지막 번호
//	 int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
//
//	 // 표시되는 페이지 번호 중 첫번째 번호
//	 int startPageNum = endPageNum - (pageNum_cnt - 1);
//	 
//	// 마지막 번호 재계산
//	 int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
//	  
//	 if(endPageNum > endPageNum_tmp) {
//	  endPageNum = endPageNum_tmp;
//	 }
//	 
//	 boolean prev = startPageNum == 1 ? false : true;
//	 boolean next = endPageNum * pageNum_cnt >= count ? false : true;
//	    
//	 List<BoardDTO> list = null; 
//	 list = boardService.listPage(displayPost, postNum);
//	 model.addAttribute("list", list);   
//	 model.addAttribute("pageNum", pageNum);
//	 
//	// 시작 및 끝 번호
//	 model.addAttribute("startPageNum", startPageNum);
//	 model.addAttribute("endPageNum", endPageNum);
//
//	 // 이전 및 다음 
//	 model.addAttribute("prev", prev);
//	 model.addAttribute("next", next);
//	 
//	// 현재 페이지
//	 model.addAttribute("select", num);
//	 
//	 return "./board/board_select_all_page_view";
//	}
}
