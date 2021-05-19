package com.spring.ex;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mariadb.jdbc.internal.logging.Logger;
import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.adMember.MemberDTO;
import com.spring.ex.adMember.MemberService;
import com.spring.ex.admin.AdminDTO;
import com.spring.ex.admin.AdminService;
import com.spring.ex.qna.MemberqnaDTO;
import com.spring.ex.qna.MemberqnaService;

@Controller
public class MemberController {

	@Inject AdminService adminservice;
	//관리자 모드 회원 목록 불러오기 ( 관리자 제외 )
	@RequestMapping(value = "admin/index", method = RequestMethod.GET)
	public String memberList(Model model) throws Exception {
		
		List<MemberDTO> memberlist =  service.memberList();
		
		model.addAttribute("List", memberlist);
		
		return "admin/index";
	}
	
	//관리자 추가를 위해 회원 목록 불러오기
	/*@RequestMapping(value = "admin/index", method = RequestMethod.GET)
	public String memberList2(Model model) throws Exception {
		
		List<MemberDTO> memberlist2 =  service.memberList();
		
		model.addAttribute("List", memberlist2);
		
		return "admin/admin_index";
	}
	*/
	//관리자 목록 불러오기
	@RequestMapping(value="admin/admin_index", method=RequestMethod.GET)
	public String AdminList(Model model) throws Exception{
		
		List<AdminDTO> adminlist=adminservice.adminList();
		
		model.addAttribute("AdminList", adminlist);
		
		return "admin/admin_index";
	}
	
	@Inject MemberqnaService qnaservice;
	
	//�쉶�썝 - qna 紐⑸줉
	@RequestMapping(value="/community_qna", method=RequestMethod.GET)
		public String QnaList(Model model) throws Exception{
			
			List<MemberqnaDTO> qnalist=qnaservice.qnaList();
			
			model.addAttribute("QnaList", qnalist);
			
			return "/community_qna";
		}
	
	
	@Inject MemberService service;
	
	//회원가입
	@RequestMapping(value="/index", method=RequestMethod.POST)
	public String joinPost(MemberDTO dto)throws Exception{
		//service.memberJoinMethod(dto);
		
		int result=service.idChk(dto);
		
		try {
			if(result==1) {
				return "/index";
			}else if(result==0) {
				service.memberJoinMethod(dto);
			}
		}catch(Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/login";
	}
	
	
    /* 로그인 */
    @RequestMapping(value="login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, MemberDTO dto, RedirectAttributes rttr) throws Exception{
        
        //System.out.println("login 메서드 진입");
        //System.out.println("전달된 데이터 : " + dto);
        
    	//session 사용하기 위해 session변수 선언하고 request로 초기화
    	//lvo 값은 아이디 비번이 존재할 경우 데이터가 담긴 dto 객체가 저장되는 것
    	//아이디 비번이 없으면 lvo에 null 저장
    	
    	HttpSession session = request.getSession();
    	MemberDTO lvo = service.Login(dto);
    	

        if(lvo == null) {// 일치하지 않는 아이디, 비밀번호 입력 경우
            
            int result = 0;
            rttr.addFlashAttribute("result", result);
            return "redirect:/index";
            
        }
        
        session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
        return "redirect:/mypage_order";

    
    }
	
	
    
    //�쉶�썝 - qna 湲��벐湲�
	@RequestMapping(value="/cm_qna_write", method=RequestMethod.POST)
	public String qnaWrite(MemberqnaDTO dto)throws Exception{
		qnaservice.qnaWriteMethod(dto);
		
		return "redirect:/community_qna";
	}
	
	//�쉶�썝 - qna �긽�꽭蹂닿린
	@RequestMapping(value="/cm_qna_view", method=RequestMethod.GET)
	public String qnaDetail(Model model, int qna_no) {
		MemberqnaDTO qnadetail=qnaservice.detail(qna_no);
		model.addAttribute("Qnadetail",qnadetail);
		System.out.println("�긽�꽭蹂닿린");
		return "/cm_qna_view";
	}
	
	//�븘�씠�뵒 以묐났 泥댄겕
	@ResponseBody
	@RequestMapping(value="/idChk", method=RequestMethod.POST)
	public int idCheck(MemberDTO dto)throws Exception{
		int result=service.idChk(dto);
		return result;
		//寃곌낵媛� �뾾�쑝硫� 0 �엳�쑝硫� 1�쓣 諛섑솚�빐以��떎�뀗
	}
	
	
}