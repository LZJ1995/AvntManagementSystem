package org.gac.lzj.avnt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/***
 * 新增信息
 */
@Controller
public class NewInformationController {


    @RequestMapping("/showNewInformation")
    public String showPage(){

        return "newInformation";
    }
}
