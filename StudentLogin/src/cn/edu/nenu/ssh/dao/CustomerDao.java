package cn.edu.nenu.ssh.dao;

import cn.edu.nenu.ssh.entity.Customer;

public interface CustomerDao {

	public Customer findCustomerById(Long CustomerId);
}
