package me.codaline.controller;

import me.codaline.model.Users;
import me.codaline.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService service;

    @RequestMapping(value = "/createUser", method = RequestMethod.GET)
    String createUser() {
        return "createUser";
    }

//    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
//         ModelAndView saveUser(
//                    String firstName,
//                    String lastName,
//                    String email
//            ) {
//        ModelAndView modelAndView = new ModelAndView("success");
//        Users user = service.createUser(firstName, lastName, email);
//        modelAndView.addObject("user", user);
//        return modelAndView;
//    }

//    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
//    @ResponseBody
//    String saveUser(
//            ModelMap modelMap,
//            @RequestParam(value = "fName", required = true) String firstName,
//            @RequestParam(value = "lName", required = false) String lastName,
//            @RequestParam(value = "e", required = true) String email
//    ) throws JSONException {
//        Users user = service.createUser(firstName, lastName, email);
//        modelMap.addAttribute("user", user);
//        JSONObject jsonObject = new JSONObject();
//        if (user == null) {
//            jsonObject.put("status", false);
//        } else {
//            jsonObject.put("status", true);
//        }
//        return jsonObject.toString();
//    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    String getUsers(ModelMap modelMap) {
        List<Users> userses = service.getUsers();
        modelMap.addAttribute("userses", userses);
        return "userses";
    }

//

}
