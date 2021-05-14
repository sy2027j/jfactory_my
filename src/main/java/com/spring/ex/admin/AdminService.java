package com.spring.ex.admin;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface AdminService {

	public List<AdminDTO> adminList() throws Exception;
}
