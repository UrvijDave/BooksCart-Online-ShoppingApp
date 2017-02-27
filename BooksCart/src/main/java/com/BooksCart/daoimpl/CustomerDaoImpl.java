package com.BooksCart.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.BooksCart.dao.CustomerDao;
import com.BooksCart.model.Cart;
import com.BooksCart.model.Customer;
import com.BooksCart.model.Role;


@Repository
@Transactional
@EnableTransactionManagement
public class CustomerDaoImpl implements CustomerDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();

        customer.getBillingAddress().setCustomer(customer);
        customer.getShippingAddress().setCustomer(customer);

        session.saveOrUpdate(customer);
        session.saveOrUpdate(customer.getBillingAddress());
        session.saveOrUpdate(customer.getShippingAddress());

        	System.out.println("data saved.....");
        	
        /*Customer newCustomer = new Customer();
        newCustomer.setCustomerName(customer.getCustomerName());
        newCustomer.setPassword(customer.getPassword());
        newCustomer.setEnabled(true);
        newCustomer.setCustomerId(customer.getCustomerId());*/

        Role newAuthority = new Role();
        newAuthority.setUsername(customer.getUsername());
        newAuthority.setAuthority("ROLE_USER");
      //  session.saveOrUpdate(newCustomer);
        session.saveOrUpdate(newAuthority);

        Cart newCart = new Cart();
        newCart.setCustomer(customer);
        customer.setCart(newCart);
        session.saveOrUpdate(customer);
        session.saveOrUpdate(newCart);

        session.flush();
    }

    public Customer getCustomerById (int customerId) {
        Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, customerId);
    }

    public List<Customer> getAllCustomers() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer");
        List<Customer> customerList = query.list();

        return customerList;
    }

    public Customer getCustomerByCustomername (String customername) {
        
    	System.out.println(customername);

    	
    	Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer where username like '"+customername+"'");
        //query.setString(0, customername);
        Customer obj= (Customer) query.uniqueResult();

        System.out.println("Inside getCustomerByCustomername.....");
        System.out.println(obj.getCustomerId()); 
        System.out.println(obj.getCustomerName());
        return obj;
    }

	@Override
	public List<Customer> getCustomerList() {
		
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer");
        List<Customer> customerList = query.list();
        session.flush();

        return customerList;
		
	}

	@Override
	public void editCustomer(Customer customer) {
		  Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(customer);
	        session.flush();
		
	}

	@Override
	public void deleteCustomer(Customer customer) {
		  Session session = sessionFactory.getCurrentSession();
	        session.delete(customer);
	        session.flush();
		
	}

	

	@Override
	public int validateCustomer(String getcustomername, String getpassword) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void approveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customer);
        session.flush();
	}
}
