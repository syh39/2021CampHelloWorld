package com.lab16.myapp.dao;

import java.util.List;

import com.lab16.myapp.model.EmployeeVO;
 
public interface EmployeeDAO 
{
    public List<EmployeeVO> getAllEmployees();
}