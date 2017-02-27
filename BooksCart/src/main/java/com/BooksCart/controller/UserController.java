/*package com.BooksCart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.BooksCart.dao.UserDAO;
import com.BooksCart.model.User;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserDAO userDao;

	@RequestMapping("/userList/all")
	public String getUsers(Model model) {
		List<User> users = userDao.getUserList();
		model.addAttribute("users", users);

		return "userList";
	}
	

	@RequestMapping("/viewUser/{userId}")
	public String viewUser(@PathVariable int userId, Model model) throws IOException {
		User user = userDao.getUserById(userId);
		model.addAttribute("user", user);

		return "viewUser";
	}

	@RequestMapping("/userList")
	public String getUserByCategory(@RequestParam("searchCondition") String searchCondition, Model model) {
		List<User> users = userDao.getUserList();
		model.addAttribute("users", users);
		model.addAttribute("searchCondition", searchCondition);

		return "userList";
	}

	@RequestMapping(value = "/authenticate", method = RequestMethod.POST, headers = "Accept=application/json")
	public String authenticateUser(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session) {
		System.out.println("username:" + username);
		System.out.println("password:" + password);

		User user1 = userDao.getUserByUsername(username);
		String result = "login";
		if (user1 == null)
			result = "login";

		if (user1.getpassword().equals(password))
			result = "User_Home"; 

		return result;

	}

	

	
}
*/