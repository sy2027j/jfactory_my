package com.spring.ex.adMember;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.qna.MemberqnaDTO;
import com.spring.ex.util.Criteria;

@Repository
public class MemberDAOImpl implements MemberDAO {

   @Inject
   private SqlSession sqlSession;
   private static final String namespace = "com.spring.ex.mappers.testMapper";
   
   @Override
   public List<MemberDTO> memberList(Criteria cri) throws Exception {
      return sqlSession.selectList(namespace + ".MemberList", cri);
   }
   
   @Override
   public List<MemberDTO> memberListPage(int page) throws Exception {
      if(page <= 0) {
         page = 1;
      }
      page = (page - 1)*15;
      return sqlSession.selectList(namespace+".memberListPage", page);
   }

   //DB ï¿½ï¿½ï¿½Ìºï¿½ ï¿½Ö´ï¿½ ï¿½ï¿½ï¿  ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿  ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
   @Override
   public int memberpageCount() throws Exception{
      return sqlSession.selectOne(namespace+".memberpageCount");
   }
   
   @Override
   public void memberJoinMethod(MemberDTO dto) throws Exception{
      sqlSession.insert(namespace+".Join",dto);
   }
   
   @Override
   public int idChk(MemberDTO dto) throws Exception{
      int result = sqlSession.selectOne(namespace+".IdChk",dto);
      return result;
   }
   
   @Override
   public MemberDTO Login(MemberDTO dto) throws Exception{
      return sqlSession.selectOne(namespace+".Login", dto);
      
      
   }
   
   @Override
   public MemberDTO findid(MemberDTO dto) throws Exception{
      return sqlSession.selectOne(namespace+".FindId", dto);
   }
   
   @Override
    public MemberDTO findpw(MemberDTO dto) throws Exception{
      return sqlSession.selectOne(namespace+".findPw", dto);
   }
   
   @Override
   public void setPw(MemberDTO dto) throws Exception{
      sqlSession.update(namespace+".setPw",dto);
   }

   @Override
    public void Joinout(MemberDTO dto) throws Exception{
      sqlSession.delete(namespace+".Joinout", dto);
   }
   
   @Override
   public MemberDTO getinformation(MemberDTO dto) throws Exception{
      return sqlSession.selectOne(namespace + ".getinformation", dto);
   }
   
   @Override
   public void mypage_information(MemberDTO dto) throws Exception { 
      sqlSession.update(namespace + ".Mypage_information", dto); 
      }
   
   @Override
   public void admin_addcheck(MemberDTO dto) throws Exception { 
      sqlSession.update(namespace + ".admin_addcheck", dto); 
   }
   
   @Override
   public void cancelCount(MemberDTO dto)throws Exception{
      sqlSession.update(namespace+".CancelCount",dto);
   }
   
   @Override
   public void OrderCount(MemberDTO dto)throws Exception{
      sqlSession.update(namespace+".OrderCount",dto);
   }

}