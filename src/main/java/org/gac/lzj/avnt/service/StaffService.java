package org.gac.lzj.avnt.service;

import org.gac.lzj.avnt.entities.StaffInfoEntity;

public interface StaffService {
    /**
     * 登录service
     * @param account 账号
     * @param password 密码
     * @return 返回查询结果
     */
    public StaffInfoEntity loginService(String account, String password);
}
