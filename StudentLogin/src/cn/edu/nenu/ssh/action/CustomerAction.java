package cn.edu.nenu.ssh.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nenu.ssh.entity.Customer;
import cn.edu.nenu.ssh.service.CustomerService;

public class CustomerAction extends ActionSupport {

	//ע��service
	private CustomerService customerService;
	
	//���Է�װ��custId
	private Long custId;//�ͻ�id
	
	//��ŵ�ֵջ��get��ʽ��
	private Customer customer;//�ͻ���Ϣ
	
	
	public CustomerService getCustomerService() {
		return customerService;
	}
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	public Long getCustId() {
		return custId;
	}
	public void setCustId(Long custId) {
		this.custId = custId;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	
	//action����
	public String queryCustomer(){
		customer=customerService.findCustomerById(custId);
		return "success";
	}
	
	
}
