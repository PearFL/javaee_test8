package com.itheima.service;
import com.itheima.po.Customer;

import java.util.List;

public interface CustomerService {
	public Customer findCustomerById(Integer id);
    public List<Customer> findCustomerByConditions(Customer customer);
    public Customer findCustomerWithBanKcard(Integer id);
}
