/*package com.BooksCart.daoimpl;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.BooksCart.dao.UserDAO;
import com.BooksCart.model.Role;
import com.BooksCart.model.User;

import java.util.List;


@Repository
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public List<User> getUserList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User");
        List<User> userList = query.list();
        session.flush();

        return userList;
    }

	@Transactional
    public User getUserById(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        session.flush();
        return user;
	}
	
	@Transactional
	public void addUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		Role r1=new Role();
		r1.setAuthority("ROLE_USER");
		r1.setUsername(user.getusername());
		session.saveOrUpdate(r1);
		session.flush();
	}
	
	@Transactional
	public void editUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
        session.flush();
	}

	@Transactional
	public void deleteUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(user);
        session.flush();
	}
	@Transactional
	public User getUserByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User where username = ?");
		query.setString(0, username);
		return (User) query.uniqueResult();
	}

	public int validateUser(String getusername, String getpassword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void approveUser(User user) {
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
        session.flush();
		
	}
}
*/