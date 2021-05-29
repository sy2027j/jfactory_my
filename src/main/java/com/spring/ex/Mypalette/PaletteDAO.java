package com.spring.ex.Mypalette;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface PaletteDAO {

	public void AddPalette(PaletteDTO dto);
	
	public List<PaletteDTO> EyesOptionlist() throws Exception;
	
	public List<PaletteDTO> BlusherOptionList() throws Exception;
}
