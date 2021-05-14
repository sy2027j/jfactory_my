package com.spring.ex.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface AdminDAO {

	public List<AdminDTO> adminList() throws Exception;
}
