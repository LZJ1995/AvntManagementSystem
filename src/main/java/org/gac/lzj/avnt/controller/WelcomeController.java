package org.gac.lzj.avnt.controller;

import org.gac.lzj.avnt.entities.StaffInfoEntity;
import org.gac.lzj.avnt.service.implement.StaffServiceImp;
import org.gac.lzj.avnt.utils.LoginResult;
import org.gac.lzj.avnt.utils.MemoryData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
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
        return "index";
    }

    @RequestMapping("/loginPage")
    public String goLogin(Model model){
        model.addAttribute("title","欢迎登录AVNT管理系统");
        return "loginPage";
    }

    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String homePage(@RequestParam String staffAccount, @RequestParam String staffPassword, Model modelview,HttpServletRequest request) {
        StaffInfoEntity staffInfo = staffService.loginService(staffAccount, staffPassword);
        if (staffInfo == null) {
            return "密码或账号错误！请重新输入";
        } else {
            // 将登陆用户信息保存到session中
            request.getSession().setAttribute("staff", staffInfo);
            // 在sessionIdMap中存放此用户sessionID;redirect
            String sessionID = request.getRequestedSessionId();
            if (!MemoryData.getSessionIdMap().containsKey(staffAccount)) {
                // 不存在，首次登陆，放入内存资源中map中
                MemoryData.getSessionIdMap().put(staffAccount, request.getRequestedSessionId());
            }else if(MemoryData.getSessionIdMap().containsKey(staffAccount)&& !StringUtils.pathEquals(sessionID, MemoryData.getSessionIdMap().get(staffAccount))){
                // 存在，非首次登陆，删除并从新保存sessionid
                MemoryData.getSessionIdMap().remove(staffAccount);
                MemoryData.getSessionIdMap().put(staffAccount, sessionID);
            }
                    return "登录成功！";
            }
        }
    }