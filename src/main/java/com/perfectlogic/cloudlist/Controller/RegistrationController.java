package com.perfectlogic.cloudlist.Controller;

import com.perfectlogic.cloudlist.domain.Role;
import com.perfectlogic.cloudlist.domain.User;
import com.perfectlogic.cloudlist.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserRepo userRepo;

    @GetMapping("/registration")
    public String registration() {

        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {
        User userFromDb = userRepo.findByUsername(user.getUsername());

        if (userFromDb != null) { //check if user exists
            model.put("message", "User Exists");
            return "registration";
        }

        user.setActive(true); //set active user or not
        user.setRoles(Collections.singleton(Role.USER)); //set only single role with singleton
        userRepo.save(user);
        return "redirect:/login";
    }
}
