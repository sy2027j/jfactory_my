package com.spring.ex.Mypalette;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface PaletteService {

	public void AddPalette(PaletteDTO dto) throws Exception;
	
	public List<PaletteDTO> EyesOptionlist() throws Exception;
	
	public List<PaletteDTO> BlusherOptionList() throws Exception;
}
