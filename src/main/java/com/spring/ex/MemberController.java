package com.spring.ex;

import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.Mypalette.PaletteDTO;
import com.spring.ex.Mypalette.PaletteService;
import com.spring.ex.adMember.MemberDTO;
import com.spring.ex.adMember.MemberService;
import com.spring.ex.admin.AdminDTO;
import com.spring.ex.admin.AdminService;
import com.spring.ex.cart.CartDTO;
import com.spring.ex.cart.CartService;
import com.spring.ex.joinout.JoinoutDTO;
import com.spring.ex.joinout.JoinoutService;
import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;
import com.spring.ex.product.ProductDTO;
import com.spring.ex.product.ProductSer;
import com.spring.ex.qna.MemberqnaDTO;
import com.spring.ex.qna.MemberqnaService;
import com.spring.ex.review.ReviewDTO;
import com.spring.ex.review.ReviewService;
import com.spring.ex.util.UploadFileUtils;

@Controller
public class MemberController {

	@Autowired
	private JavaMailSender emailSender;

	@Inject
	AdminService adminservice;

	@Inject
	JoinoutService joinoutservice;

	// 관리자 모드 회원 목록 불러오기 ( 관리자 제외 )
	@RequestMapping(value = "admin/index", method = RequestMethod.GET)
	public String memberList(Model model) throws Exception {

		List<MemberDTO> memberlist = service.memberList();

		model.addAttribute("List", memberlist);

		return "admin/index";
	}

	@RequestMapping(value = "admin/member_detail", method = RequestMethod.GET)
	public String member_detail(Model model, AdminDTO dto) throws Exception {

		System.out.println("find id");
		AdminDTO memdetaildto = adminservice.member_detail(dto);
		System.out.println("find id");
		model.addAttribute("memdetaildto", memdetaildto);
		System.out.println("find id");

		return "admin/member_detail";
	}

	// 관리자 목록 불러오기
	@RequestMapping(value = "admin/admin_index", method = RequestMethod.GET)
	public String AdminList(Model model) throws Exception {

		List<AdminDTO> adminlist = adminservice.adminList();

		model.addAttribute("AdminList", adminlist);

		return "admin/admin_index";
	}

	@RequestMapping(value = "admin/admin_addlist", method = RequestMethod.GET)
	public String memberaddList(Model model) throws Exception {

		List<MemberDTO> memberlist2 = service.memberList();

		model.addAttribute("List2", memberlist2);

		return "admin/admin_addlist";
	}

	@Inject
	MemberqnaService qnaservice;

	// qna list -select
	@RequestMapping(value = "/community_qna", method = RequestMethod.GET)
	public String QnaList(Model model) throws Exception {

		List<MemberqnaDTO> qnalist = qnaservice.qnaList();

		model.addAttribute("QnaList", qnalist);

		return "/community_qna";
	}

	@Inject
	MemberService service;

	// 회원가입
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public String joinPost(MemberDTO dto) throws Exception {
		// service.memberJoinMethod(dto);

		int result = service.idChk(dto);

		try {
			if (result == 1) {
				System.out.println("중복된 아이디");
				return "/index";
			} else if (result == 0) {
				service.memberJoinMethod(dto);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/login";
	}

	/* 로그인 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberDTO dto, RedirectAttributes rttr,
			HttpServletResponse response) throws Exception {

		// System.out.println("login 메서드 진입");
		// System.out.println("전달된 데이터 : " + dto);

		// session 사용하기 위해 session변수 선언하고 request로 초기화
		// lvo 값은 아이디 비번이 존재할 경우 데이터가 담긴 dto 객체가 저장되는 것
		// 아이디 비번이 없으면 lvo에 null 저장

		HttpSession session = request.getSession();
		MemberDTO lvo = service.Login(dto);

		if (lvo == null) {// 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();

		} else if (lvo.getMem_is_admin() == 1) { // 관리자 1,2이면 관리자 페이지로 로그인창 넘어감
			session.setAttribute("member", lvo);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('메인 관리자 권한으로 로그인 되었습니다.');window.open('admin/admin_index','_blanck');</script>");
			out.flush();

		} else if (lvo.getMem_is_admin() == 2) {
			session.setAttribute("member", lvo);
			return "redirect:/admin/index";
		}

		session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
		return "/index";

	}

	@RequestMapping(value = "/mypage_information", method = RequestMethod.POST)
	public void mypage_information(Model model, HttpServletResponse response, Object handler, MemberDTO dto) throws Exception {
		System.out.println("find id");
		MemberDTO member = service.getinformation(dto);
		System.out.println("find id");
		model.addAttribute("member", member);
		System.out.println("find id");
		service.mypage_information(dto);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<script>alert('회원정보가 수정되었습니다.'); location.href='/ex/mypage_order';</script>");
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/information_check", method = RequestMethod.POST)
	public String information_check(HttpServletRequest request
            , HttpServletResponse response, Object handler, HttpSession session, MemberDTO dto, RedirectAttributes rttr) throws Exception {
		MemberDTO member = (MemberDTO) session.getAttribute("member");

		String sessionpass = member.getMem_password();
		String dtopass = dto.getMem_password();

		if (!(sessionpass.equals(dtopass))) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('비밀번호를 확인하세요.'); location.href='/ex/information_check';</script>");
			out.flush();
			out.close();
			return "redirect:/information_check";
		}
		return "redirect:/mypage_information";
	}

	@RequestMapping(value = "/joinout_check", method = RequestMethod.POST)
	public String joinout_check(HttpSession session, MemberDTO dto, RedirectAttributes rttr) throws Exception {
		MemberDTO member = (MemberDTO) session.getAttribute("member");

		String sessionpass = member.getMem_password();
		String dtopass = dto.getMem_password();

		if (!(sessionpass.equals(dtopass))) {
			return "redirect:/joinout_check";
		}
		return "redirect:/joinout";
	}

	@RequestMapping(value = "/joinout", method = RequestMethod.POST)
	public String joinout(JoinoutDTO Jdto, MemberDTO dto, HttpSession session) throws Exception {
		System.out.println("joinout");
		joinoutservice.joinout(Jdto);
		System.out.println("123");
		service.Joinout(dto);
		session.invalidate();
		System.out.println("254");
		return "redirect:/joinout_confirm";
	}

	// qna wirte -insert
	@RequestMapping(value = "/cm_qna_write", method = RequestMethod.POST)
	public String qnaWrite(MemberqnaDTO dto) throws Exception {
		qnaservice.qnaWriteMethod(dto);

		return "redirect:/community_qna";
	}

	// qna detail view -select
	@RequestMapping(value = "/cm_qna_view", method = RequestMethod.GET)
	public String qnaDetail(Model model, int qna_no) {
		MemberqnaDTO qnadetail = qnaservice.detail(qna_no);
		model.addAttribute("Qnadetail", qnadetail);
		System.out.println("qna detail view");
		return "/cm_qna_view";
	}

	// id duplication check -select
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idCheck(MemberDTO dto) throws Exception {
		int result = service.idChk(dto);
		return result;
		// id already exist -> result=1
	}

	@Inject
	ReviewService reservice;

	// logout session remove
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}

	@RequestMapping(value = "/findId", method = RequestMethod.POST)
	public String findid(Model model, MemberDTO dto) throws Exception {
		System.out.println("find id");
		MemberDTO iddto = service.findid(dto);
		model.addAttribute("Iddto", iddto);
		System.out.println("find id");
		if (iddto == null) {// 일치하지 않는 아이디, 비밀번호 입력 경우

			return "redirect:/index";

		}

		return "/showId";
	}

	// review detail view -select
	@RequestMapping(value = "/review_view", method = RequestMethod.GET)
	public String reDetail(Model model, int re_no, ReviewDTO dto) {
		ReviewDTO redto = reservice.detail(re_no);
		try {
			reservice.Review_count(re_no);
			System.out.println("조회수 1번 적립");
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("Redetail", redto);
		System.out.println("review detail view");
		return "/review_view";
	}

	// review list -select
	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public String ReviewList(Model model) throws Exception {
		List<ReviewDTO> relist = reservice.reviewList();
		List<ReviewDTO> bedto = reservice.bestlist();
		model.addAttribute("ReviewList", relist);
		model.addAttribute("BestReview", bedto);
		return "/review";
	}

	@RequestMapping(value = "/findPw", method = RequestMethod.POST)
	public String findpw(Model model, MemberDTO dto, HttpServletRequest request) throws Exception {
		System.out.println("ddd");
		HttpSession session = request.getSession();
		MemberDTO pwdto = service.findpw(dto);
		model.addAttribute("Pwdto", pwdto);
		System.out.println("findPw");
		if (pwdto == null) {// 일치하지 않는 아이디, 비밀번호 입력 경우

			return "redirect:/index"; /// 일치하는 회원이 없습니다 부분 구현해야함
		}

		session.setAttribute("member_rePw", pwdto);

		return "/setPw";
	}

	@RequestMapping(value = "/setPw", method = RequestMethod.POST)
	public String setPw(MemberDTO dto, HttpSession session) throws Exception {
		System.out.println("1234");
		service.setPw(dto);
		session.invalidate();
		return "redirect:/login";
	}

	@Inject
	ProductSer prservice;

	/*
	 * @RequestMapping(value = "admin/addproductjf", method = RequestMethod.POST)
	 * public String AddProduct(ProductDTO dto, MultipartHttpServletRequest
	 * mpRequest, Model model, String pd_name) throws Exception {
	 * prservice.AddProduct(dto, mpRequest); System.out.println("add product");
	 * ProductDTO jebal = prservice.AddDetail(pd_name); model.addAttribute("Jebal",
	 * jebal); System.out.println("add detail"); return "/admin/pd_add_detail"; }
	 */

	// product list
	@RequestMapping(value = "/eye_product_list", method = RequestMethod.GET)
	public String productlist(Model model, String pd_category) throws Exception {
		List<ProductDTO> pddto = prservice.productlist(pd_category);
		model.addAttribute("Productlist", pddto);
		System.out.println("product list select");
		return "/eye_product_list";
	}

	// product detail
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String ProductDetailView(Model model, String pd_name) {
		ProductDTO pddetaildto = prservice.AddDetail(pd_name);
		model.addAttribute("ProductDetail", pddetaildto);
		System.out.println("product detail view");
		return "/product_detail";
	}

	// emailSend는 컨트롤러, sendMail은 emailSender
	@RequestMapping(value = "/emailSend", method = RequestMethod.POST)
	@ResponseBody
	public String emailSend(@RequestParam(required = false) String mem_email) {
		System.out.println("이메일 인증");
		String mem_Email = "";
		String subject = "";
		String content = "";
		String receiver = "";
		String sender = "";

		int mem_email_code = 0;
		String authCodes = "";

		if (mem_email != null && !mem_email.isEmpty()) {
			mem_Email = mem_email;

			for (int i = 0; i < 6; i++) {
				mem_email_code = (int) (Math.random() * 9 + 1);
				authCodes += Integer.toString(mem_email_code);
			}

			subject = "jfactory에서 발송된 인증번호 입니다.";
			content = "안녕하세요 고객님 jfactory를 찾아주셔서 감사합니다. jfactory 인증번호를 다음과 같이 알려드립니다." + "<br><br>" + "인증번호는"
					+ authCodes + "입니다." + "<br><br>" + "회원가입 창으로 돌아가 인증번호란에 입력해주세요.";
			receiver = mem_Email;
			sender = "jfactorykm@gmail.com";
		}

		try {
			MimeMessage message = emailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(sender);
			helper.setTo(receiver);
			helper.setSubject(subject);
			helper.setText(content, true);
			emailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return authCodes;
	}

	// admin qna list
	@RequestMapping(value = "admin/cm_qna", method = RequestMethod.GET)
	public String AdminQnaList(Model model) throws Exception {

		List<MemberqnaDTO> qnalist = qnaservice.qnaList();

		model.addAttribute("QnaList", qnalist);
		System.out.println("admin qna list");
		return "admin/cm_qna";
	}

	// admin qna detail view
	@RequestMapping(value = "admin/admin_cm_qna_view", method = RequestMethod.GET)
	public String AdminqnaDetail(Model model, int qna_no) {
		MemberqnaDTO qnadetail = qnaservice.detail(qna_no);
		model.addAttribute("Qnadetail", qnadetail);
		System.out.println("qna detail view");
		return "admin/admin_cm_qna_view";
	}

	@RequestMapping(value = "admin/reply_qna", method = RequestMethod.GET)
	public String ReplyQna(MemberqnaDTO dto) throws Exception {
		qnaservice.ReplyQna(dto);
		System.out.println("reply qna");
		return "redirect:/admin/cm_qna";
	}

	// notice faq write
	@RequestMapping(value = "admin/write_notice", method = RequestMethod.POST)
	public String AdminqnaWrite(MemberqnaDTO dto) throws Exception {
		qnaservice.NoticeWrite(dto);
		System.out.println("notice faq write");
		return "redirect:/admin/cm_qna";
	}

	@RequestMapping(value = "admin/addproductjf", method = RequestMethod.POST)
	public String TravelPhotoWrite(ProductDTO vo, MultipartFile file, HttpServletRequest req, Model model,
			String pd_name) throws Exception {
		String Path = req.getSession().getServletContext().getRealPath("resources/image/product/");
		System.out.println(Path);
		String fileName = null;

		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
		}
		vo.setPd_main_stored_file(fileName);

		prservice.ProductPhotoWrite(vo);
		ProductDTO jebal = prservice.AddDetail(pd_name);
		model.addAttribute("Jebal", jebal);
		System.out.println("add detail");
		return "/admin/pd_add_detail";
	}

	@RequestMapping(value = "admin/addDetail", method = RequestMethod.POST)
	public String addDetail(ProductDTO dto, MultipartFile file, HttpServletRequest req) throws Exception {
		String Path = req.getSession().getServletContext().getRealPath("resources/image/product/");
		System.out.println(Path);
		String fileName = null;

		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
		}
		dto.setPd_con_stored_file(fileName);
		dto.setPd_con_file(file.getOriginalFilename());
		prservice.addDetail(dto);
		System.out.println("update detail success");

		return "redirect:/admin/pd_add";
	}

	// review write insert
	@RequestMapping(value = "/review_write", method = RequestMethod.POST)
	public String reviewWrite(ReviewDTO dto, MultipartFile file, HttpServletRequest req) throws Exception {
		String Path = req.getSession().getServletContext().getRealPath("resources/image/review/");
		System.out.println(Path);
		String fileName = null;

		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
		}
		dto.setRe_stored_file(fileName);
		reservice.review(dto);
		System.out.println("review write");
		return "redirect:/review";
	}

	@Inject
	PaletteService myservice;

	@RequestMapping(value = "admin/mypalette_op", method = RequestMethod.POST)
	public String MypalettePhotoAdd(PaletteDTO vo, MultipartFile file, HttpServletRequest req, Model model)
			throws Exception {
		String Path = req.getSession().getServletContext().getRealPath("resources/image/product/");
		System.out.println(Path);
		String fileName = null;

		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
		}
		vo.setMy_main_stored_img(fileName);

		myservice.AddPalette(vo);
		return "/admin/mypalette_add";
	}

	@RequestMapping(value = "admin/pd_index", method = RequestMethod.GET)
	public String StockList(Model model) throws Exception {
		List<ProductDTO> stocklist = prservice.ProductStockList();
		model.addAttribute("StockList", stocklist);
		return "admin/pd_index";
	}

	@Inject
	CartService cartservice;

	// CART 장바구니 controller
	/*
	 * @RequestMapping(value ="/cart", method = RequestMethod.GET) public String
	 * delete(CartDTO dto) throws Exception { cartservice.delete(dto); return
	 * "rediret:/index"; }
	 */
	@RequestMapping(value = "/mypalette_4", method = RequestMethod.GET)
	public String EyeOptionList(Model model) throws Exception {
		List<PaletteDTO> eyeoplist = myservice.EyesOptionlist();
		model.addAttribute("EyesList", eyeoplist);
		List<PaletteDTO> blusheroplist = myservice.BlusherOptionList();
		model.addAttribute("BlusherList", blusheroplist);
		return "/mypalette_4";
	}

	@RequestMapping(value = "/cartadd", method = RequestMethod.POST)
	public void AddCart(CartDTO dto, HttpServletResponse response) throws Exception {
		// service.memberJoinMethod(dto);
		cartservice.AddCart(dto);
		System.out.println("add cart");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('장바구니에 상품이 담겼습니다.');history.go(-1);</script>");
		out.flush();
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String CartList(Model model, CartDTO dto, HttpSession session, MemberDTO mdto) throws Exception {
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		String sessionpass = member.getmem_id();
		List<CartDTO> cartlist = cartservice.CartList(sessionpass);
		System.out.println("cart list");
		model.addAttribute("CartList", cartlist);
		return "/cart";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(CartDTO dto, HttpServletResponse response, Model model, HttpSession session, MemberDTO mdto)
			throws Exception {
		cartservice.delete(dto);
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		String sessionpass = member.getmem_id();
		List<CartDTO> cartlist = cartservice.CartList(sessionpass);
		System.out.println("cart list");
		model.addAttribute("CartList", cartlist);
		return "/cart";
	}
	
	@RequestMapping(value = "/orderlist", method = RequestMethod.POST)
	public String order(HttpSession session, OrderDTO order, OrderDetailDTO orderDetail) throws Exception {
	 System.out.println("check0");
	 MemberDTO member = (MemberDTO)session.getAttribute("member");  
	 String mem_id = member.getmem_id();
	 System.out.println("check1");
	 Calendar cal = Calendar.getInstance();
	 int year = cal.get(Calendar.YEAR);
	 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
	 String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
	 String subNum = "";
	 
	 for(int i = 1; i <= 6; i ++) {
	  subNum += (int)(Math.random() * 10);
	 }
	 System.out.println("check2");
	 String or_id = ymd + "_" + subNum;
	 
	 order.setOr_id(or_id);
	 order.setMem_id(mem_id);
	 
	 cartservice.orderInfo(order);  
	 System.out.println("check3");
	 orderDetail.setOr_id(or_id); 
	 orderDetail.setMem_id(mem_id);
	 System.out.println(mem_id);
	 System.out.println("check2");
	 cartservice.orderdetailInfo(orderDetail); 
	 System.out.println("check4");
	 cartservice.cartAllDelete(mem_id);
	 System.out.println("check5"); 
	 return "redirect:/index";  
	}

}