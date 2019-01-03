package com.itheima.dao;
import com.itheima.po.Customer;

import java.util.List;

/**
 * Customer接口文件
 */
public interface CustomerDao {
	/**
	 * 根据id查询客户信息
	 */
	public Customer findCustomerById(Integer id);
	public List<Customer> findCustomerByConditions(Customer customer);
	public Customer findCustomerWithBanKcard(Integer id);
}
