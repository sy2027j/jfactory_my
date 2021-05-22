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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.adMember.MemberDTO;
import com.spring.ex.adMember.MemberService;
import com.spring.ex.admin.AdminDTO;
import com.spring.ex.admin.AdminService;
import com.spring.ex.qna.MemberqnaDTO;
import com.spring.ex.qna.MemberqnaService;
import com.spring.ex.review.ReviewDTO;
import com.spring.ex.review.ReviewService;

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
	
	//관리자 목록 불러오기
	@RequestMapping(value="admin/admin_index", method=RequestMethod.GET)
	public String AdminList(Model model) throws Exception{
		
		List<AdminDTO> adminlist=adminservice.adminList();
		
		model.addAttribute("AdminList", adminlist);
		
		return "admin/admin_index";
	}
	
	@RequestMapping(value = "admin/admin_addlist", method = RequestMethod.GET)
	public String memberaddList(Model model) throws Exception {
		
		List<MemberDTO> memberlist2 =  service.memberList();
		
		model.addAttribute("List2", memberlist2);
		
		return "admin/admin_addlist";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Inject MemberqnaService qnaservice;
	
	//qna list -select
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
            
        } else if (lvo.getMem_is_admin()==1) {
        	  session.setAttribute("member", lvo); 
              
              return "redirect:/admin/index";
        }
        
        session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
        return "redirect:/mypage_order";

        
    }

	
    
    //qna wirte -insert
	@RequestMapping(value="/cm_qna_write", method=RequestMethod.POST)
	public String qnaWrite(MemberqnaDTO dto)throws Exception{
		qnaservice.qnaWriteMethod(dto);
		
		return "redirect:/community_qna";
	}
	
	//qna detail view -select
	@RequestMapping(value="/cm_qna_view", method=RequestMethod.GET)
	public String qnaDetail(Model model, int qna_no) {
		MemberqnaDTO qnadetail=qnaservice.detail(qna_no);
		model.addAttribute("Qnadetail",qnadetail);
		System.out.println("qna detail view");
		return "/cm_qna_view";
	}
	
	//id duplication check -select
	@ResponseBody
	@RequestMapping(value="/idChk", method=RequestMethod.POST)
	public int idCheck(MemberDTO dto)throws Exception{
		int result=service.idChk(dto);
		return result;
		//id already exist -> result=1
	}
	
	@Inject ReviewService reservice;
	
	//review write insert
	@RequestMapping(value="/review_write", method=RequestMethod.POST)
	public String reviewWrite(ReviewDTO dto, MultipartHttpServletRequest mpRequest) throws Exception{
		reservice.review(dto, mpRequest);
		System.out.println("review write");
		return "redirect:/review";
	}
	
	//logout session remove
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	   public String logout(HttpSession session) {
	      session.invalidate();
	      return "redirect:/index";
	   }
	

	
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public String findid(Model model, MemberDTO dto) throws Exception{
		MemberDTO iddto =service.findid(dto);
		model.addAttribute("Iddto",iddto);
		System.out.println("find id");
		if(iddto == null) {// 일치하지 않는 아이디, 비밀번호 입력 경우
            
            return "redirect:/index";
            
        }
			
		return "/showId";
	}
	
	//review detail view -select
	@RequestMapping(value="/review_view", method=RequestMethod.GET)
	public String reDetail(Model model, int re_no) {
		ReviewDTO redto=reservice.detail(re_no);
		model.addAttribute("Redetail",redto);
		System.out.println("review detail view");
		return "/review_view";
	}
	
	//review list -select
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public String ReviewList(Model model) throws Exception{
		List<ReviewDTO> relist=reservice.reviewList();
		model.addAttribute("ReviewList", relist);
		return "/review";
	}
	
	@RequestMapping(value = "/findPw", method = RequestMethod.POST)
	public String findPw(Model model, MemberDTO dto, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		MemberDTO pwdto = service.findPw(dto);
		model.addAttribute("Pwdto", pwdto);
		System.out.println("findPw");
		if (pwdto == null) {// 일치하지 않는 아이디, 비밀번호 입력 경우

			return "redirect:/index";

		}
		
		session.setAttribute("member_rePw", pwdto); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
		
		return "/setPw";
	}

	@RequestMapping(value = "/setPw", method = RequestMethod.POST)
	public String setPw(MemberDTO dto, HttpSession session) throws Exception {
		System.out.println("1234");
		service.setPw(dto);
		session.invalidate();
		return "redirect:/login";
	}
	
}