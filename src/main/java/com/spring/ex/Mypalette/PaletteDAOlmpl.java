package com.spring.ex.Mypalette;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PaletteDAOlmpl implements PaletteDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public void AddPalette(PaletteDTO dto) {
		sqlSession.insert(namespace+".AddMypalette",dto);
	}
	
	@Override
	public List<PaletteDTO> EyesOptionlist() throws Exception{
		return sqlSession.selectList(namespace+".MypaletteEyes");
	}
	
	@Override
	public List<PaletteDTO> BlusherOptionList() throws Exception{
		return sqlSession.selectList(namespace+".MypaletteBlusher");
	}
}
