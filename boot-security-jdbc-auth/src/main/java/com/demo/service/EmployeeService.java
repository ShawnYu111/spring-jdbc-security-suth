package com.demo.service;

import java.util.List;

import com.demo.model.Employee;

public interface EmployeeService {
	void insertEmployee(Employee emp);
	void deleteEmployee(String empid);
	void insertEmployees(List<Employee> employees);
	List<Employee> getAllEmployees();
	void getEmployeeById(String empid);
	
}