package org.gac.lzj.avnt.controller;

import org.gac.lzj.avnt.entities.StaffInfoEntity;
import org.gac.lzj.avnt.service.implement.StaffServiceImp;
import org.gac.lzj.avnt.utils.LoginResult;
import org.gac.lzj.avnt.utils.MemoryData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class WelcomeController {

    @Autowired
    private StaffServiceImp staffService;

    @RequestMapping("/")
    public String welcomPage(Model model){
        model.addAttribute("title","欢迎登录AVNT管理系统");
        return "homePage";
    }

    @RequestMapping("/loginPage")
    public String goLogin(Model model){
        model.addAttribute("title","欢迎登录AVNT管理系统");
        return "homePage";
    }

    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String homePage(@RequestParam String staffAccount, @RequestParam String staffPassword, Model modelview,HttpServletRequest request){
        if(!MemoryData.getSessionIdMap().containsKey(staffAccount)){
        StaffInfoEntity staffInfo= staffService.loginService(staffAccount,staffPassword);
        LoginResult result=new LoginResult();
        System.out.println(staffInfo.toString());
        if(staffInfo!=null){
            // 将登陆用户信息保存到session中
            request.getSession().setAttribute("staff",staffInfo);
            MemoryData.getSessionIdMap().put(staffAccount,request.getRequestedSessionId());
            return "{\"result\":true}";
        }else {
            return "{\"result\":密码或账号错误！请重新输入}";
        }
        }else {
            return "{\"result\":true}";
        }
    }
}

