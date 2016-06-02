package com.mycompany.personalwebsite.controllers;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
        
    public HelloController() {
    }
    
    @RequestMapping(value={"/", "/home"}, method=RequestMethod.GET)
    public String homePage(Map<String, Object> model) {
        model.put("message", "Hello from the controller" );
        return "home";
    }
    @RequestMapping(value={"/about"}, method=RequestMethod.GET)
    public String aboutPage(Map<String, Object> model) {
        model.put("message", "Hello from the controller" );
        return "about";
    }
    @RequestMapping(value={"/code"}, method=RequestMethod.GET)
    public String codePage(Map<String, Object> model) {
        model.put("message", "Hello from the controller" );
        return "code";
    }
    @RequestMapping(value={"/contact"}, method=RequestMethod.GET)
    public String contactPage(Map<String, Object> model) {
        model.put("message", "Hello from the controller" );
        return "contact";
    }
    @RequestMapping(value={"/math"}, method=RequestMethod.GET)
    public String mathPage(Map<String, Object> model) {
        model.put("message", "Hello from the controller" );
        return "math";
    }
}
