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
	
	@RequestMapping(value = "admin/index", method = RequestMethod.GET)
	public String memberList(Model model) throws Exception {
		
		List<MemberDTO> memberlist =  service.memberList();
		
		model.addAttribute("List", memberlist);
		
		return "admin/index";
	}
	
	@Inject AdminService adminservice;
	
	@RequestMapping(value="admin/admin_index", method=RequestMethod.GET)
	public String AdminList(Model model) throws Exception{
		
		List<AdminDTO> adminlist=adminservice.adminList();
		
		model.addAttribute("AdminList", adminlist);
		
		return "admin/admin_index";
	}
	
	@Inject MemberqnaService qnaservice;
	
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
	
	@RequestMapping(value="/cm_qna_write", method=RequestMethod.POST)
	public String qnaWrite(MemberqnaDTO dto)throws Exception{
		qnaservice.qnaWriteMethod(dto);
		
		return "redirect:/community_qna";
	}
	
}