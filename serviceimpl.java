package com.tech.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tech.dao.daoi;
import com.tech.model.Customer;
import com.tech.service.servicei;

@Service
public class serviceimpl implements servicei {
	
	@Autowired
	daoi dao;

	@Override
	public String saveCust(Customer cust) {
	
		return dao.saveCust(cust);
	}

	@Override
	public List<Customer> loginCust(String accno,String pin) {
		
		return dao.loginCust(accno,pin);
	}

	@Override
	public Customer editData(String accno) {
		
		return dao.editData(accno);
	}

	@Override
	public Customer updateData(String accno,Customer cust) {
		
		return dao.updateData(accno,cust);
		
	}

	@Override
	public void pinchange(String accno, String pin) {
		
		 dao.pinchange(accno, pin);
	}

	@Override
	public List<Customer> deposite(String accno,String pin,double amt) {
		return dao.deposite(accno,pin, amt);
		
	}

	@Override
	public double withdraw(String accno, String pin,double amt) {
		
	return	dao.withdraw(accno, pin,amt);
		
		
	}

	@Override
	public Customer moneyTransfer(String accno, String pin, String acno,double amt) {
		
		return dao.moneyTransfer(accno, pin, acno,amt);
		
	}

	@Override
	public List<Customer> checkBalance(String accno, String pin) {
		
		return dao.checkBalance(accno, pin);
	}

	@Override
	public Customer accInfo(String accno) {
		
		return dao.accInfo(accno);
	}

	@Override
	public List<Customer> getAllCustomer() {
		
		return dao.getAllCustomer();
	}


	@Override
	public void deleteCustomer(String accno) {
		
		dao.deleteCustomer(accno);
		
	}

	@Override
	public String editpin(String accno) {
		
		 return dao.editpin(accno);
	}

	@Override
	public Customer changePin(String accno,String newPin) {

		return dao.changePin(accno,newPin);
		
	}

	@Override
	public String updateData(Customer cust) {

		return dao.updateData(cust);
		
	}

	@Override
	public Customer forgatepass(String accno) {
		
		return dao.forgatepass(accno);
	}

	

}
