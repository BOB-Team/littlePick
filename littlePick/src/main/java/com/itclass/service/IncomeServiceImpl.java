package com.itclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itclass.vo.IncomeVO;

import lombok.Setter;
import mappers.IncomeMapper;

public class IncomeServiceImpl {
	
	@Setter(onMethod_=@Autowired)
	private IncomeMapper incomeMapper;
	
	@Override
	public List<IncomeVO> getIncome(){
		return incomeMapper.getIncome();
	}

}
