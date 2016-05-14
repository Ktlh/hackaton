package me.codaline.controller;

import me.codaline.model.questions;
import me.codaline.service.QuestionService;
import me.codaline.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class QuestionController {
    @Autowired
    QuestionService service;
    UserService service2;

    @RequestMapping(value = "/result", method = RequestMethod.POST)
    String saveUser(
            ModelMap modelMap,
            String id,
            HttpServletRequest request) throws UnknownHostException {
        String mass[] = id.split("-");
        List<Integer> results = new ArrayList<Integer>();
        for (String num: mass) {
            results.add(Integer.parseInt(num));
        }

//        String type=null;
//        InetAddress ipAdr= InetAddress.getLocalHost();
//        Users user = service.createUser(firstName, lastName, email);
//        modelMap.addAttribute("user", user);
//        JSONObject jsonObject = new JSONObject();
//        if (user == null) {
//            jsonObject.put("status", false);
//        } else {
//            jsonObject.put("status", true);
//        }

//        service2.createUser(ipAdr.getAddress().toString(),type);
        modelMap.addAttribute("mass",id);
        return "index";
    }
    @RequestMapping("/test")
    String test(ModelMap modelMap) {
        List<questions> questionses = service.getQuestions();
        modelMap.addAttribute("questions", questionses);
        return "test";
    }
}
