package com.spring.ex.adMember;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.qna.MemberqnaDTO;
import com.spring.ex.util.Criteria;

@Service
public interface MemberService {

   public List<MemberDTO> memberList(Criteria cri) throws Exception;

   public int memberpageCount() throws Exception;

   public void memberJoinMethod(MemberDTO dto) throws Exception;

   public int idChk(MemberDTO dto) throws Exception;

   public MemberDTO Login(MemberDTO dto) throws Exception;

   public MemberDTO findid(MemberDTO dto) throws Exception;

   public MemberDTO findpw(MemberDTO dto) throws Exception;

   public void setPw(MemberDTO dto) throws Exception;

   public void Joinout(MemberDTO dto) throws Exception;

   public MemberDTO getinformation(MemberDTO dto) throws Exception;

   public void mypage_information(MemberDTO dto) throws Exception;
   
   public void admin_addcheck(MemberDTO dto) throws Exception;

   public void cancelCount(MemberDTO dto) throws Exception;

   public void OrderCount(MemberDTO dto) throws Exception;
}