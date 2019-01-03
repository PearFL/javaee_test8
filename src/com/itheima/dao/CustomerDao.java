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

    /**
     * 查询所有的用户信息
     * （可以根据手机号、姓名、身份证号组合查询客户信息）
     */
	public List<Customer> findCustomerByConditions(Customer customer);

    /**
     * 查询用户所有银行卡的信息
     */
	public Customer findCustomerWithBanKcard(Integer id);
}
