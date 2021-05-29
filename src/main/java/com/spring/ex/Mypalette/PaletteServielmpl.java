package com.spring.ex.Mypalette;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class PaletteServielmpl implements PaletteService {

	@Inject
	private PaletteDAO dao;
	
	@Override
	public void AddPalette(PaletteDTO dto) throws Exception{
		dao.AddPalette(dto);
	}
	
	@Override
	public List<PaletteDTO> EyesOptionlist() throws Exception{
		return dao.EyesOptionlist();
	}

	@Override
	public List<PaletteDTO> BlusherOptionList() throws Exception{
		return dao.BlusherOptionList();
	}
}
