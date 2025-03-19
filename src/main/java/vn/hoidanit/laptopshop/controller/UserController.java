package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserService;

import java.util.List;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @RequestMapping("/admin/user/create")
    public String GetUserCreationPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping("/admin/user")
    public String GetUserTablePage(Model model) {
        return "admin/user/table";
    }

    @GetMapping("/admin/user")
    public String GetUserList(Model model) {
        List<User> userList = this.userService.findAllUsers();
        model.addAttribute("userList", userList);
        return "admin/user/table";
    }

    @GetMapping("/admin/user/delete")
    public String deleteUser(@RequestParam("id") Long id, Model model) {
        userService.deleteUserById(id);
        return "redirect:/admin/user";
    }


    @RequestMapping(value="admin/user/create", method = RequestMethod.POST)
    public String createUser(Model model, @ModelAttribute("newUser") User user) {
        // processing here
        this.userService.saveUser(user);
        System.out.println("Log prints out" + user);
//        this.userService.findAllUsersByEmail(user.getEmail());
        System.out.println(this.userService.findAllUsersByEmail("thongdnmhe176561@fpt.edu.vn"));
        return "redirect:/admin/user";
    }
}
