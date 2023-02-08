package sth.project.web.member.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sth.project.web.member.dto.MemberDTO;
import sth.project.web.member.service.MemberService;

//빈으로 컨트롤러 스캔을 구성하고 컨트롤러를 구현한다.
@Controller
public class MemberController {
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	//회원 전체조회
	@RequestMapping(value = "/MemberSelect", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list", memberService.memberSelectAll());
		logger.info("list", model);
		return "./member/member_select_all_view";
	}
	
	//회원 상세조회
	@RequestMapping(value= "/MemberSelectDetail", method = RequestMethod.GET)
	public String detail(Model model, MemberDTO memberDTO) {
		model.addAttribute("memberDTO", memberService.memberSelect(memberDTO.getId()));
		return "./member/member_select_view";
	}
	
	//회원가입
	@RequestMapping(value = "/MemberInsert", method = RequestMethod.GET)
	public String memberinsert() {
		return "./member/member_insert";
	}
	
	@RequestMapping(value = "/MemberInsert", method = RequestMethod.POST)
	public String memberinsert(Model model, MemberDTO memberDTO) {
		model.addAttribute("list", memberService.memberSelectAll());
		memberService.memberInsert(memberDTO);
		return "./member/member_insert_view";
	}
	
	//회원 수정
	@RequestMapping(value = "/MemberUpdate", method = RequestMethod.GET)
	public String memberupdate(Model model, MemberDTO memberDTO) {
		model.addAttribute("memberDTO", memberService.memberSelect(memberDTO.getId()));
		return "./member/member_update";
	}
	@RequestMapping(value = "/MemberUpdate", method = RequestMethod.POST)
	public String memberupdate(MemberDTO memberDTO) {
		memberService.memberUpdate(memberDTO);
		return "./member/member_update_view";
	}
	
	//회원 삭제
	@RequestMapping(value = "/MemberDelete", method = RequestMethod.GET)
	public String memberdelete() {
		return "./member/member_delete";
	}
	
	@RequestMapping(value = "/MemberDelete", method = RequestMethod.POST)
	public String memberdelete(MemberDTO memberDTO) {
		memberService.memberDelete(memberDTO.getId());
		return "./member/member_delete_view";
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberDTO memberDTO, HttpServletRequest req, RedirectAttributes rttr, String pwd, String id) throws Exception {
		logger.info("post login");
		HttpSession session = req.getSession();
		MemberDTO login = memberService.login(memberDTO);
		session.setAttribute("id", id);

		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("member", login);
		}
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping(value= "/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest req) throws Exception {
		logger.info("logout메서드 진입");
		HttpSession session = req.getSession();
		session.invalidate();
		
		return "redirect:/";
		
	}
	
	@RequestMapping(value="/home")
	public String home() {
		return "redirect:/";
	}
	
}
