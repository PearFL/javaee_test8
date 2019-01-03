package com.itheima.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.itheima.po.Customer;
import com.itheima.service.CustomerService;

import java.util.List;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	/**
	 * 根据id查询客户详情
	 */
	@RequestMapping("/findCustomerById")
	public String findCustomerById(Integer id,Model model) {
		Customer customer = customerService.findCustomerById(id);
		model.addAttribute("customer", customer);
		//返回客户信息展示页面
		return "customer";
	}

	@RequestMapping("/findCustomerByConditions")
	public String findCustomerByConditions(Customer customer, Model model) {
		List<Customer> customers=customerService.findCustomerByConditions(customer);
		model.addAttribute("customers",customers);
		//返回客户信息展示页面
		return "homepage";
	}
	@RequestMapping("/findCustomerWithBanKcard")
	public String findCustomerWithBanKcard(Integer id,Model model) {
		Customer customer=customerService.findCustomerWithBanKcard(id);
		model.addAttribute("customer",customer);
		//返回客户详情展示页面
		return "customerdetails";
	}
}
