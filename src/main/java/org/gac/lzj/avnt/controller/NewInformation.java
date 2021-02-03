package org.gac.lzj.avnt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewInformation {


    @RequestMapping("/showNewInformation")
    public String showPage(){

        return "newInformation";
    }
}
