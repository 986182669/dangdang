package org.sunrise.dangdang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class GotoJspController {
    @RequestMapping(value = "login")
    public String goLogin(){
        System.out.println("----------------------------");
        return "login";
    }
    @RequestMapping(value = "register")
    public String goRegister(){
        return "register";
    }

    @RequestMapping(value = "index")
    public String goList(){
        return "list";
    }

    @RequestMapping(value = "footer")
    public String getFooter(){
        return "footer";
    }

    @RequestMapping(value = "header")
    public String getHeader(){
        return "header";
    }
}
