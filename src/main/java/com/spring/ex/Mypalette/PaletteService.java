package com.spring.ex.Mypalette;

import org.springframework.stereotype.Service;

@Service
public interface PaletteService {

	public void AddPalette(PaletteDTO dto) throws Exception;
}
