package com.spring.ex.Mypalette;

import org.springframework.stereotype.Repository;

@Repository
public interface PaletteDAO {

	public void AddPalette(PaletteDTO dto);
}
