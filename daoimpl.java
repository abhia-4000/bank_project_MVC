package com.tech.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tech.dao.daoi;
import com.tech.model.Customer;

@Repository
public class daoimpl implements daoi {

	@Autowired
	SessionFactory sf;

	@Override
	public String saveCust(Customer cust) {
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		s.save(cust);
		tx.commit();
		
		return "Successfully saved..";
	}

	@Override
	public List<Customer> loginCust(String accno,String pin) {
		Session s = sf.openSession();
		s.beginTransaction();
		Query q = s.createQuery("from Customer c where c.accno=:accno and c.pin=:pin");
		q.setParameter("accno", accno);
		q.setParameter("pin", pin);
		List list = q.list();
		return list;
		
	}

	@Override
	public Customer editData(String accno) {

		Session s = sf.openSession();
		s.beginTransaction();
		Customer customer = s.get(Customer.class, accno);

		return customer;
	}

	@Override
	public Customer updateData(String accno, Customer cust) {

		Session s = sf.openSession();

		s.saveOrUpdate(cust);
		s.beginTransaction().commit();
		Customer cust1 = s.get(Customer.class, accno);

		return cust1;
	}

	@Override
	public void pinchange(String accno, String pin) {

		Session s = sf.openSession();
		s.beginTransaction();
		Transaction tx = s.beginTransaction();

		s.saveOrUpdate(pin);
		tx.commit();
	}

	@Override
	public List<Customer> deposite(String accno,String pin, double amt) {
		Session s = sf.openSession();
		s.beginTransaction();
		Query q = s.createQuery("from Customer c where c.accno=:accno and c.pin=:pin");
		q.setParameter("accno", accno);
		q.setParameter("pin", pin);
		List<Customer> cust = q.list();
		for(Customer cu:cust) {
		 cu.setAmount(cu.getAmount()+amt);
		}
		s.getTransaction().commit();

		return cust;

	}

	@Override
	public double withdraw(String accno,String pin,double amt) {
		Session s = sf.openSession();
		double d =0.0,bal=0.0;
		Query q = s.createQuery("from Customer c where c.accno=:accno and c.pin=:pin");
		q.setParameter("accno", accno);
		q.setParameter("pin", pin);
		List<Customer> list = q.list();
		for(Customer c:list) {
			d = c.getAmount()-amt;
			if(d>=500)
			{
				bal = c.setAmount(d);
			}else {
				bal = c.getAmount();
			}
		}

		s.beginTransaction().commit();
		return bal;

	}

	@Override
	public Customer moneyTransfer(String accno, String pin, String acno, double amt) {
		Session s = sf.openSession();
		s.beginTransaction();
		Customer cust = s.get(Customer.class, accno);

		if ((cust.getAmount() - amt) >= 500) {
			cust.setAmount(cust.getAmount() - amt);
			Customer cu = s.get(Customer.class, acno);
			cu.setAmount(cu.getAmount() + amt);
			s.save(cu);

		}

		s.getTransaction().commit();
		return cust;

	}

	@Override
	public List<Customer> checkBalance(String accno, String pin) {
		Session s = sf.openSession();
		s.beginTransaction();
		Query q = s.createQuery("from Customer c where c.accno=:accno and c.pin=:pin");
		q.setParameter("accno", accno);
		q.setParameter("pin", pin);
		List list = q.list();

		return list;
	}

	@Override
	public Customer accInfo(String accno) {
		Session s = sf.openSession();
		Customer cust = s.get(Customer.class, accno);

		s.beginTransaction().commit();

		return cust;
	}

	@Override
	public List<Customer> getAllCustomer() {
		Session s = sf.openSession();
		s.beginTransaction();
		List<Customer> customer = s.createQuery("from Customer").list();
		return customer;
	}

	@Override
	public void deleteCustomer(String accno) {
		Session s = sf.openSession();
		Customer cust = s.get(Customer.class, accno);
		s.delete(cust);
		s.beginTransaction().commit();

	}

	@Override
	public String editpin(String accno) {
		Session s = sf.openSession();
		s.beginTransaction();
		Customer cust = s.get(Customer.class, accno);
		String pin2 = cust.getPin();

		return "pin2";
	}

	@Override
	public Customer changePin(String accno, String newPin) {

		Session s = sf.openSession();
		Customer cust = s.get(Customer.class, accno);
		cust.setPin(newPin);

		s.beginTransaction().commit();

		return cust;

	}

	@Override
	public String updateData(Customer cust) {
		Session s = sf.openSession();
		
		s.saveOrUpdate(cust);
		if(cust.getAmount()<=500) {
			
			return "Amount should be greater than 500 RS..";
		}
		else {
			
		    s.beginTransaction().commit();
		    return "Data Saved Successfully..";
		}
	}

	@Override
	public Customer forgatepass(String accno) {
		
		Session s = sf.openSession();
		Customer cust = s.get(Customer.class, accno);
		s.beginTransaction().commit();
		
		return cust;
		
	}

}
