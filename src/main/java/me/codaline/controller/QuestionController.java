package me.codaline.controller;

import me.codaline.beans.Result;
import me.codaline.model.questions;
import me.codaline.service.QuestionService;
import me.codaline.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import me.codaline.model.answers;
import me.codaline.model.questions;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class QuestionController {
    @Autowired
    QuestionService service;
    UserService service2;

    answers answers;

    @RequestMapping(value = "/result", method = RequestMethod.POST)
    @ResponseBody
    List<Result> saveUser(
            ModelMap modelMap,
            String id,
            HttpServletRequest request) throws UnknownHostException {
        String mass[] = id.split("-");
        List<Integer> results = new ArrayList<Integer>();
        for (String num : mass) {
            results.add(Integer.parseInt(num));
        }
//        Map<String, Integer> search = new HashMap<String, Integer>();
//        search.put("progr", 0);
//        search.put("komp", 0);
//        search.put("design", 0);
//        search.put("bo", 0);
//        search.put("market", 0);
//        search.put("eco", 0);
        Result programmer = new Result("Programmer", 0);
        Result komputer = new Result("Computer engineer", 0);
        Result design = new Result("Designer", 0);
        Result bo = new Result("Accounting", 0);
        Result market = new Result("Marketing", 0);
        Result economy = new Result("Economist", 0);

        for (int i = 0; i < 20; i++) {
            answers = service.getAnswerById(results.get(i));

//            search.put("progr",search.get("progr")+answers.getDevelop());
//            search.put("komp",search.get("komp")+answers.getComp());
//            search.put("design",search.get("design")+answers.getDesign());
//            search.put("bo",search.get("bo")+answers.getBo());
//            search.put("market",search.get("market")+answers.getMarketing());
//            search.put("eco",search.get("eco")+answers.getEconomy());
            programmer.setValue(programmer.getValue()+answers.getDevelop());
            komputer.setValue(komputer.getValue()+answers.getComp());
            design.setValue(design.getValue()+answers.getDesign());
            bo.setValue(bo.getValue()+answers.getBo());
            market.setValue(market.getValue()+answers.getMarketing());
            economy.setValue(economy.getValue()+answers.getEconomy());
        }

        List<Result> responseResults = new ArrayList<Result>();
        responseResults.add(programmer);
        responseResults.add(komputer);
        responseResults.add(design);
        responseResults.add(bo);
        responseResults.add(market);
        responseResults.add(economy);

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
        return responseResults;
    }

    @RequestMapping("/")
    String test(ModelMap modelMap) {
        List<questions> questionses = service.getQuestions();
        modelMap.addAttribute("questions", questionses);
        return "main";
    }
}
