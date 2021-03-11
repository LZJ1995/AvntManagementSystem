package org.gac.lzj.avnt.interceptor;

import org.gac.lzj.avnt.entities.StaffInfoEntity;
import org.gac.lzj.avnt.utils.MemoryData;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SingleUserInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
      StaffInfoEntity staffInfo= (StaffInfoEntity) request.getSession().getAttribute("staff");
        if (staffInfo==null){
           String requestUrl =request.getRequestURI();
           if (requestUrl.contains("login")||requestUrl.equals("/welcome/")){
               return true;
           }else {
               response.sendRedirect(request.getContextPath()+"/loginPage.do");
               return false;
           }
        }else {
         String staffAccount= MemoryData.getSessionIdMap().get(staffInfo.getStaffAccount());
         if (staffAccount.equals(request.getSession().getId())){
             // 如果用户名存在放心（即登录放行）
            return true;
         }else {
            // 如果请求的sessionID和此账号Map中存放的sessionID不一致，跳转到登陆页
             // 判断如果是异步请求，设置响应头 sessionstatus为timeout，自动跳转，否则重定向
             if (request.getHeader("x-requested-with") != null
                     && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
                 response.setHeader("sessionstatus", "timeout");
                 return false;
             } else {
                 String indexurl ="redirect:/loginPage.do";
                 response.sendRedirect(indexurl);
                 return false;
             }
         }
        }
    }
}
