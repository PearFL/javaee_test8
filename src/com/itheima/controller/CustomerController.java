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

    /**
     * 查询所有的用户信息
     * 可以根据手机号、姓名、身份证号组合查询客户信息
     * 手机号:customer_mobile
     * 姓名:customer_name
     * 身份证号：customer_idcard
     */
	@RequestMapping("/findCustomerByConditions")
	public String findCustomerByConditions(Customer customer, Model model) {
		List<Customer> customers=customerService.findCustomerByConditions(customer);
		model.addAttribute("customers",customers);
		//返回客户信息展示页面
		return "homepage";
	}

    /**
     * 查询用户所有银行卡的信息
     */
	@RequestMapping("/findCustomerWithBanKcard")
	public String findCustomerWithBanKcard(Integer id,Model model) {
		Customer customer=customerService.findCustomerWithBanKcard(id);
		model.addAttribute("customer",customer);
		//返回客户详情展示页面
		return "customerdetails";
	}
}
