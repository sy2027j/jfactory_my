package com.spring.ex.review;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.product.ProductDTO;
import com.spring.ex.util.Criteria;

@Repository
public class ReviewDAOlmpl implements ReviewDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.mappers.testMapper";

	@Override
	public void review(ReviewDTO dto) throws Exception {
		sqlSession.insert(namespace + ".Reiew", dto);
	}

	@Override
	public ReviewDTO detail(int re_no) {
		return sqlSession.selectOne(namespace + ".ReviewView", re_no);
	}

	@Override
	public List<ReviewDTO> reviewList(Criteria cri) throws Exception {
		System.out.println("DAO: listPageCri �샇�뜝�룞�삕");
		return sqlSession.selectList(namespace + ".ReviewList", cri);
	}
	
	@Override
	public List<ReviewDTO> productreviewlist(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".productreviewlist", cri);
	}
	
	@Override
	public List<AdminDTO> reviewSearchList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".reviewSearchList", cri);
	}

	@Override
	public List<AdminDTO> reviewSearchListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".reviewSearchListPage", page);
	}

	// DB ���̺� �ִ� ��� �� ���� ��� �� ����
	@Override
	public int reviewSearchpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".reviewSearchpageCount");
	}

	@Override
	public List<ReviewDTO> searchreviewlist(Criteria cri) throws Exception {
		System.out.println("DAO: listPageCri �샇�뜝�룞�삕");
		return sqlSession.selectList(namespace + ".searchreviewlist", cri);
	}

	// �뜝�룞�삕�뜝�룞�삕吏�
	@Override
	public List<ReviewDTO> reviewListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".reviewListPage", page);
	}

	@Override
	public int reviewpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".reviewpageCount");
	}

	@Override
	public List<ReviewDTO> bestlist() throws Exception {
		return sqlSession.selectList(namespace + ".BestReview");
	}

	@Override
	public void Review_count(int re_no) throws Exception {
		sqlSession.update(namespace + ".Review_count", re_no);
	}

	@Override
	public List<ReviewDTO> myreList(ReviewDTO dto) throws Exception {
		return sqlSession.selectList(namespace + ".MyReviewList", dto);
	}

	@Override
	public int PdReviewCount(ReviewDTO dto) throws Exception {
		int result = sqlSession.selectOne(namespace + ".reviewCount", dto);
		return result;
	}
	
	@Override
	public void ReviewDelete(ReviewDTO dto) throws Exception {
		sqlSession.delete(namespace + ".ReviewDelete", dto);
	}
}
