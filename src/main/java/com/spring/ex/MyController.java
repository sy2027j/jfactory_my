package com.spring.ex;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@RequestMapping("/index")
	public String index() {
		return("/index");
	}
	
	//��������ó�����
	@RequestMapping("/PrivacyPolicy")
	public String PrivacyPolicy() {
		return("/PrivacyPolicy");
	}
	
	//�̿���
	@RequestMapping("/tos")
	public String tos() {
		return("/tos");
	}
	
	//��������
	@RequestMapping("/legalNotice")
	public String legalNotice() {
		return("/legalNotice");
	}
	
	@RequestMapping("/eye_product_list")
	public String eyelist() {
		return("/eye_product_list");
	}
	
	@RequestMapping("/mypalette")
	public String mypalette() {
		return("/mypalette");
	}
	
	@RequestMapping("/clean_product_list")
	public String cleanlist() {
		return("/clean_product_list");
	}
	@RequestMapping("/skin_product_list")
	public String skinlist() {
		return("/skin_product_list");
	}
	@RequestMapping("/face_product_list")
	public String facelist() {
		return("/face_product_list");
	}
	@RequestMapping("/lip_product_list")
	public String liplist() {
		return("/lip_product_list");
	}
	
	@RequestMapping("/product_detail")
	public String product_detail() {
		return("/product_detail");
	}
	
	@RequestMapping("/mypalette_4")
	public String mypalette_4() {
		return("/mypalette_4");
	}
	
	@RequestMapping("/mypalette_6")
	public String mypalette_6() {
		return("/mypalette_6");
	}
	
	@RequestMapping("/mypalette_9")
	public String mypalette_9() {
		return("/mypalette_9");
	}
	
	@RequestMapping("/community_qna")
	public String community_qna() {
		return("/community_qna");
	}
	
	@RequestMapping("/cm_qna_write")
	public String cm_qna_write() {
		return("/cm_qna_write");
	}
	
	@RequestMapping("/review")
	public String review() {
		return("/review");
	}
	
	@RequestMapping("/review_write")
	public String review_write() {
		return("/review_write");
	}
	
	@RequestMapping("/login")
	public String login() {
		return("/login");
	}
	@RequestMapping("/join")
	public String join() {
		return("/join");
	}
	@RequestMapping("/findId")
	public String findId() {
		return("/findId");
	}
	
	@RequestMapping("/findPw")
	public String findPw() {
		return("/findPw");
	}
	
	@RequestMapping("/setPw")
	public String setPw() {
		return("/setPw");
	}
	
	@RequestMapping("/showId")
	public String showId() {
		return("/showId");
	}
	
	@RequestMapping("/best_all")
	public String best_all() {
		return("/best_all");
	}
	
	
	@RequestMapping("/best_eye")
	public String best_eye() {
		return("/best_eye");
	}
	
	@RequestMapping("/best_lip")
	public String best_lip() {
		return("/best_lip");
	}
	
	@RequestMapping("/best_face")
	public String best_face() {
		return("/best_face");
	}
	
	@RequestMapping("/best_skin")
	public String best_skin() {
		return("/best_skin");
	}
	
	@RequestMapping("/best_clean")
	public String best_clean() {
		return("/best_clean");
	}
	 
	@RequestMapping("admin/Header")
	public String adHeader() {
		return("admin/Header");
	}
	
	@RequestMapping("admin/index")
	public String index2() {
			return("admin/index");
	}
	
	@RequestMapping("admin/member_detail")
	public String member_detail() {
		return("admin/member_detail");
	}
	
	@RequestMapping("admin/admin_index")
	public String admin_index() {
		return("admin/admin_index");
	}
	
	@RequestMapping("admin/admin_list")
	public String admin_list() {
		return("admin/admin_list");
	}
	
	@RequestMapping("admin/order")
	public String order() {
		return("admin/order");
	}
	
	@RequestMapping("admin/order_cancel")
	public String order_cancel() {
		return("admin/order_cancel");
	}
	
	@RequestMapping("admin/order_return")
	public String order_return() {
		return("admin/order_return");
	}
	
	@RequestMapping("admin/order_index")
	public String order_index() {
		return("admin/order_index");
	}
	
	@RequestMapping("admin/order_cancel_index")
	public String order_cancel_index() {
		return("admin/order_cancel_index");
	}
	
	@RequestMapping("admin/order_return_index")
	public String order_return_index() {
		return("admin/order_return_index");
	}
	
	@RequestMapping("admin/pd_index")
	public String pd_index() {
		return("admin/pd_index");
	}
	
	
	@RequestMapping("admin/cm_qna")
	public String cm_qna() {
		return("admin/cm_qna");
	}
	
	@RequestMapping("admin/cm_review")
	public String cm_review() {
		return("admin/cm_review");
	}
	
	@RequestMapping("/cart")
	public String cart() {
		return ("/cart");
	}
	
	@RequestMapping("/mypage_order")
	public String mypage_order() {
		return ("/mypage_order");
	}
	
	@RequestMapping("/mypage_view")
	public String mypage_view() {
		return ("/mypage_view");
	}
	
	@RequestMapping("/mypage_review")
	public String mypage_review() {
		return ("/mypage_review");
	}
	
	@RequestMapping("/mypage_ask")
	public String mypage_ask() {
		return ("/mypage_ask");
	}
	
	@RequestMapping("/mypage_point")
	public String mypage_point() {
		return ("/mypage_point");
	}
	
	@RequestMapping("/mypage_infomation")
	public String mypage_infomation() {
		return ("/mypage_infomation");
	}
	
	@RequestMapping("/mypage_coupon")
	public String mypage_coupon() {
		return ("/mypage_coupon");
	}
	
	@RequestMapping("/mypage_usecoupon")
	public String mypage_usecoupon() {
		return ("/mypage_usecoupon");
	}
	
	@RequestMapping("/joinout")
	public String joinout() {
		return ("/joinout");
	}
	
	@RequestMapping("/mypage_orderdetail")
	public String mypage_orderdetail() {
		return ("/mypage_orderdetail");
	}
	
	@RequestMapping("/membership")
	public String membership() {
		return ("/membership");
	}
	
	@RequestMapping("/join_agree1")
	public String join_agree1() {
		return ("/join_agree1");
	}
	
	@RequestMapping("/join_agree2")
	public String join_agree2() {
		return ("/join_agree2");
	}
}