package cn.edu.nenu.ssh.service;

import cn.edu.nenu.ssh.entity.Customer;

public interface CustomerService {
	public Customer findCustomerById(Long CustomerId);
}
