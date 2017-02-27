/*package com.BooksCart.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;

import com.BooksCart.dao.UserDAO;
import com.BooksCart.model.Product;
import com.BooksCart.model.User;

@Controller
@RequestMapping("/admin")
public class AdminControllerUser {

	private Path path;

	@Autowired
	private UserDAO userDao;

	@Transactional
	@RequestMapping("/userInventory")
	
	public String getUsers(Model model) {
		List<User> users = userDao.getUserList();
		model.addAttribute("users", users);
		return "userInventory";
		
	}

	@Transactional
	@RequestMapping("/addUser")
	public String addUser(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "addUser";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUserPost(@ModelAttribute("user") User user, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "denied";
		}
		System.out.println("inside addUser-post");
		System.out.println(user.getusername());
		//System.out.println(product.getProductCategory());
		
		userDao.addUser(user);
		return "redirect:/admin/userInventory";
	}
	
	
	@Transactional
	@RequestMapping("/userList")
	public String userList(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "userList";
	}
	
	@Transactional
	@RequestMapping("/user/editUser/{id}")
	public String editUser(@PathVariable("id") int id, Model model) {
		User user = userDao.getUserById(id);
		model.addAttribute("user", user);
		return "editUser";
	}

	@Transactional
	@RequestMapping(value = "/user/editUser", method = RequestMethod.POST)
	public String editUserPost(@Valid @ModelAttribute("user") User user, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "editUser";
		}

		// MultipartFile userImage = user.getUserImage();

		// String rootDirectory =
		// request.getSession().getServletContext().getRealPath("/");
		// path = Paths.get(rootDirectory +
		// "\\WEB-INF\\resources\\images\\"+user.getUserId()+".jpg");
		path = Paths.get("D:\\img\\" + user.getUserId() + ".jpg");

		// if (userImage != null && !userImage.isEmpty()) {
		// try {
		// userImage.transferTo(new File(path.toString()));
		// } catch (Exception e) {
		// e.printStackTrace();
		// throw new RuntimeException("User image saving failed.", e);
		// }
		// }

		userDao.editUser(user);

		return "redirect:/admin/userInventory";
	}

	
    @Transactional
    @RequestMapping("/approveUser/{id}")
    public String approveUser(@PathVariable int id, Model model, HttpServletRequest request) {
        System.out.println("approved user");
        User user = userDao.getUserById(id);
        user.setEnabled(true);
        userDao.approveUser(user);

        return "redirect:/admin/userInventory";
    }
	
	@Transactional
	@RequestMapping("/user/deleteUser/{id}")
	public String deleteUser(@PathVariable int id, Model model, HttpServletRequest request) {

		// String rootDirectory =
		// request.getSession().getServletContext().getRealPath("/");
		// path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" +
		// id + ".jpg");
		path = Paths.get("D:\\img\\" + id + ".jpg");
		if (Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		User user = userDao.getUserById(id);
		userDao.deleteUser(user);

		return "redirect:/admin/userInventory";
	}
}
*/