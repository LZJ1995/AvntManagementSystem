package org.gac.lzj.avnt.service.implement;

import org.gac.lzj.avnt.dao.StaffinfoDao;
import org.gac.lzj.avnt.entities.StaffInfoEntity;
import org.gac.lzj.avnt.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaffServiceImp implements StaffService {
    @Autowired
    private StaffinfoDao staffinfoDao;

    public StaffInfoEntity loginService(String account, String password) {
        StaffInfoEntity staffInfo=null;
        if (!account.equals(" ")&&!password.equals(" ")){
            staffInfo= staffinfoDao.getCheckLogin(account,password);
        }
        System.out.println("sercices"+staffInfo.toString());
        return staffInfo;
    }
}
