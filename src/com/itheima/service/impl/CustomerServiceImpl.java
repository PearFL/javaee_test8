package com.itheima.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.dao.CustomerDao;
import com.itheima.po.Customer;
import com.itheima.service.CustomerService;

import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	//注解注入CustomerDao
	@Autowired
	private CustomerDao customerDao;
	//查询客户
	public Customer findCustomerById(Integer id) {
		return this.customerDao.findCustomerById(id);
	}

    //查询所有的用户信息（可以根据手机号、姓名、身份证号组合查询客户信息）
	@Override
	public List<Customer> findCustomerByConditions(Customer customer) {
		return this.customerDao.findCustomerByConditions(customer);
	}

    //查询用户所有银行卡的信息
	@Override
	public Customer findCustomerWithBanKcard(Integer id) {
		return this.customerDao.findCustomerWithBanKcard(id);
	}
}
