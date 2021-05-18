package com.spring.ex;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.adMember.MemberDTO;
import com.spring.ex.adMember.MemberService;
import com.spring.ex.admin.AdminDTO;
import com.spring.ex.admin.AdminService;
import com.spring.ex.qna.MemberqnaDTO;
import com.spring.ex.qna.MemberqnaService;

@Controller
public class MemberController {

	@Inject MemberService service;
	
	//관리자 - 회원목록
	@RequestMapping(value = "admin/index", method = RequestMethod.GET)
	public String memberList(Model model) throws Exception {
		
		List<MemberDTO> memberlist =  service.memberList();
		
		model.addAttribute("List", memberlist);
		
		return "admin/index";
	}
	
	@Inject AdminService adminservice;
	
	//관리자 - 관리자 목록
	@RequestMapping(value="admin/admin_index", method=RequestMethod.GET)
	public String AdminList(Model model) throws Exception{
		
		List<AdminDTO> adminlist=adminservice.adminList();
		
		model.addAttribute("AdminList", adminlist);
		
		return "admin/admin_index";
	}
	
	@Inject MemberqnaService qnaservice;
	
	//회원 - qna 목록
	@RequestMapping(value="/community_qna", method=RequestMethod.GET)
		public String QnaList(Model model) throws Exception{
			
			List<MemberqnaDTO> qnalist=qnaservice.qnaList();
			
			model.addAttribute("QnaList", qnalist);
			
			return "/community_qna";
		}
	
	@RequestMapping(value="/index", method=RequestMethod.POST)
	public String joinPost(MemberDTO dto)throws Exception{
		service.memberJoinMethod(dto);
		
		return "redirect:/login";
	}
	
	//회원 - qna 글쓰기
	@RequestMapping(value="/cm_qna_write", method=RequestMethod.POST)
	public String qnaWrite(MemberqnaDTO dto)throws Exception{
		qnaservice.qnaWriteMethod(dto);
		
		return "redirect:/community_qna";
	}
	
	//회원 - qna 상세보기
	@RequestMapping(value="/cm_qna_view", method=RequestMethod.GET)
	public String qnaDetail(Model model, int qna_no) {
		MemberqnaDTO qnadetail=qnaservice.detail(qna_no);
		model.addAttribute("Qnadetail",qnadetail);
		System.out.println("상세보기");
		return "/cm_qna_view";
	}
	
	//아이디 중복 체크
	@RequestMapping(value="/idChk", method=RequestMethod.GET)
	public String idCheck(MemberDTO dto)throws Exception{
		int result=service.idCheck(dto);
		try {
			if(result==1) {
				System.out.println("사용가능");
			}else if(result==0) {
				System.out.println("사용불가능");
			}
		}catch(Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/login";
	}
	
	
}