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
        StaffInfoEntity staffInfo= staffinfoDao.queryCheckLogin(account,password);
        return staffInfo;
    }
}
