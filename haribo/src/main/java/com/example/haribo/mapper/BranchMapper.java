package com.example.haribo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.haribo.vo.Branch;

@Mapper
public interface BranchMapper {

	List<Branch> branchList();
	
	List<Branch> branchStock();
}
