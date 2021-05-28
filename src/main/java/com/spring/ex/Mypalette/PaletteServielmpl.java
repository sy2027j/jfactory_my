package com.spring.ex.Mypalette;

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

}
