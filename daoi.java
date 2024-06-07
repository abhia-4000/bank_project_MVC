package com.tech.dao;

import java.util.List;

import com.tech.model.Customer;

public interface daoi {

	public String saveCust(Customer cust);
	
	public List<Customer> loginCust(String accno,String pin);
	
	public Customer editData(String accno);
	
	public Customer updateData(String accno,Customer cust);
	
	public void pinchange(String accno,String pin);
	
	public List<Customer> deposite(String accno,String pin,double amt);
	
	public double withdraw(String accno,String pin,double amt);
	
	public Customer moneyTransfer(String accno,String pin,String acno,double amt);
	
	public List<Customer> checkBalance(String accno,String pin);
	
	public Customer accInfo(String accno);
	
	public List<Customer> getAllCustomer();
	
	public String updateData(Customer cust);
	
	public void deleteCustomer(String accno);
	
	public String editpin(String accno);
	
	public Customer changePin(String accno,String newPin);
	
	public Customer forgatepass(String accno);
}


