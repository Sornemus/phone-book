package com.lardi.phone_book;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

    protected static final Logger LOG = LogManager.getLogger(MainController.class);

    @RequestMapping("/hell")
    public String index(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {


        model.addAttribute("name", name);
        return "index";
    }

}