package com.tech.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tech.model.Customer;
import com.tech.service.servicei;

@Controller
public class custController {

	@Autowired
	servicei service;

	@RequestMapping("/register")
	public String saveData(@ModelAttribute Customer cust) {

		service.saveCust(cust);
		return "login";

	}

	@RequestMapping("/login")
	public String loginCust(@RequestParam("accno") String accno, @RequestParam("pin") String pin, Model m) {

		List<Customer> cust = service.loginCust(accno, pin);

		if (cust.isEmpty()) {

			String msg = "Please Enter Valid Account Number";
			m.addAttribute("msg", msg);
			return "login";

		} else {
			for (Customer c : cust) {
				String accno2 = c.getAccno();
				m.addAttribute("accno", accno2);
			}

			return "operation";
		}

	}

	@RequestMapping("/before_edit")
	public String before_edit(@RequestParam("accno") String accno, Model m) {

		m.addAttribute("accno", accno);

		return "edit";
	}

	@RequestMapping("/edit")
	public String editInfo(@RequestParam("accno") String accno, Model m) {

		Customer cust = service.editData(accno);
		String accno2 = cust.getAccno();
		m.addAttribute("accno", accno2);
		m.addAttribute("data", cust);
		return "update";

	}

	@RequestMapping("/custupdate")
	public String updateData(@RequestParam("accno") String accno, @ModelAttribute Customer cust, Model m) {

		m.addAttribute("accno", accno);
		Customer cust1 = service.updateData(accno, cust);
		String accno2 = cust1.getAccno();
		String msg = "Data Updated Successfully..";
		m.addAttribute("msg", msg);
		return "operation";

	}

	@RequestMapping("/deposite")
	public String deposite(@RequestParam("accno") String accno, Model m) {

		m.addAttribute("accno", accno);

		return "deposite";
	}

	@RequestMapping("/depositemoney")
	public String depositeMoney(@RequestParam("accno") String accno, @RequestParam("pin") String pin,
			@RequestParam("amt") double amt, Model m) {

		List<Customer> cust = service.deposite(accno, pin, amt);

		if (cust.isEmpty()) {
			String msg1 = "Please Enter Correct Pin..";
			m.addAttribute("msg1", msg1);
			m.addAttribute("accno", accno);
			return "deposite";

		} else {
			String accno2 = " ", pin2 = " ";
			for (Customer cu : cust) {
				accno2 = cu.getAccno();
				pin2 = cu.getPin();
			}
			
			m.addAttribute("accno", accno);
			String msg = "Money Deposited Successfully..";
			m.addAttribute("msg", msg);

			return "operation";
		}
	}

	@RequestMapping("/withdraw")
	public String withdraw(@RequestParam("accno") String accno, Model m) {

		m.addAttribute("accno", accno);

		return "withdraw";
	}

	@RequestMapping("/withdrawmoney")
	public String withdrawMoney(@RequestParam("accno") String accno, @RequestParam("pin") String pin,
			@RequestParam("amt") double amt, Model m) {

		double w = service.withdraw(accno, pin, amt);
		System.out.println(w);
		String msg = "";
		if ((w - amt) >= 500) {
			msg = " ";
			System.out.println(w);
			msg = "Money Withdraw Successfully..";

		} else {
			msg = " ";
			msg = "Insufficcient Balance";

		}
		m.addAttribute("msg", msg);
		m.addAttribute("accno", accno);
		return "operation";
	}

	@RequestMapping("/moneytransfer")
	public String moneytransfer(@RequestParam("accno") String accno, Model m) {

		m.addAttribute("accno", accno);

		return "moneytransfer";
	}

	@RequestMapping("/transfer")
	public String moneyTransfer(@RequestParam("accno") String accno, @RequestParam("pin") String pin,
			@RequestParam("acno") String acno, @RequestParam("amt") double amt, Model m) {

		Customer cust = service.moneyTransfer(accno, pin, acno, amt);
		String accno2 = cust.getAccno();
		m.addAttribute("accno", accno2);
		String msg = "Money Transfered Successfully..";
		m.addAttribute("msg", msg);

		return "operation";
	}

	@RequestMapping("/balance")
	public String beforegetBalance(@RequestParam("accno") String accno, Model m) {

		m.addAttribute("accno", accno);

		return "balance";
	}

	@RequestMapping("/getBalance")
	public String getBalance(@RequestParam("accno") String accno, @RequestParam("pin") String pin, Model m) {

		List<Customer> cust = service.checkBalance(accno, pin);
		if (cust.isEmpty()) {

			String msg = "Hey User..\nPlease Enter Correct Pin ";
			m.addAttribute("msg", msg);
			m.addAttribute("accno", accno);
			return "balance";

		} else {
			double amt = 0.0;
			for (Customer c : cust) {
				String accno2 = c.getAccno();
				m.addAttribute("accno", accno2);
				amt = c.getAmount();
			}

			String msg = "The Balance is " + amt + " RS. ";
			m.addAttribute("msg", msg);
			return "operation";
		}
	}

	@RequestMapping("/info")
	public String accinfo(@RequestParam("accno") String accno, Model m) {

		Customer cust = service.accInfo(accno);

		m.addAttribute("data", cust);
		return "accountinfo";

	}

	@RequestMapping("/back")
	public String back(@RequestParam("accno") String accno, Model m) {

		m.addAttribute("accno", accno);

		return "operation";
	}

	@RequestMapping("/before_pinchange")
	public String before_pinchange(@RequestParam("accno") String accno, Model m) {

		m.addAttribute("accno", accno);
		return "changepin";
	}

	@RequestMapping("/editpin")
	public String updatepin(@RequestParam("accno") String accno, @RequestParam("oldPin") String OldPin,
			@RequestParam("newPin") String newPin, @RequestParam("cPin") String cPin, Model m) {

		if (newPin.equals(cPin)) {
			Customer cust = service.changePin(accno, newPin);
			String accno2 = cust.getAccno();
			m.addAttribute("accno", accno2);
			String msg = "Pin changed Successfully..";
			m.addAttribute("msg", msg);

			return "operation";
		} else {
			String msg = "Invalid Pin ";
			m.addAttribute("msg1", msg);
			return "changepin";

		}

	}

	@RequestMapping("/forgate")
	public String forgatpass(@RequestParam("accno") String accno, Model m) {
		Customer cust = service.forgatepass(accno);
		String pin = cust.getPin();
		m.addAttribute("msg1", "Your Pin is " + pin);
		return "login";

	}

	// Admin Methods

	@RequestMapping("/adminlogin")
	public String adminlogin(@RequestParam("accno") int accno, @RequestParam("pin") String pin, Model m) {

		if (accno == 1234 && pin.equals("a123")) {
			List<Customer> stu_List = service.getAllCustomer();
			m.addAttribute("data", stu_List);
			return "admin";

		} else {

			String msg = "Invalid Account Number and Pin";
			m.addAttribute("msg1", msg);
			return "index";
		}

	}

	@RequestMapping("/deletecust")
	public String deleteCust(@RequestParam("accno") String accno, Model m) {

		service.deleteCustomer(accno);
		List<Customer> cust = service.getAllCustomer();
		m.addAttribute("data", cust);
		return "admin";
	}

	@RequestMapping("/adedit")
	public String dataedit(@RequestParam("accno") String accno, Model m) {

		Customer cust = service.editData(accno);
		if (cust == null) {
			String msg = "Invalid Account Number";
			m.addAttribute("data", cust);
			return "admin";
		} else {
			m.addAttribute("data", cust);
			return "adupdate";
		}
	}

	@RequestMapping("/adupdatedata")
	public String adupdateData(@ModelAttribute Customer cust, Model m) {

		service.updateData(cust);
		List<Customer> custo = service.getAllCustomer();
		m.addAttribute("data", custo);
		return "admin";

	}

	@RequestMapping("/adregistercust")
	public String registerData(@ModelAttribute Customer cust, Model m) {

		service.updateData(cust);
		List<Customer> custo = service.getAllCustomer();
		m.addAttribute("data", custo);
		return "admin";

	}

}
