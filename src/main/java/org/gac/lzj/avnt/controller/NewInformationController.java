package org.gac.lzj.avnt.controller;

import org.gac.lzj.avnt.entities.DeviceInfoEntity;

import org.gac.lzj.avnt.entities.MaterielInfoEntity;
import org.gac.lzj.avnt.service.DeviceService;
import org.gac.lzj.avnt.service.MaterielSerivce;
import org.gac.lzj.avnt.utils.ImportExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.List;


/***
 * 新增信息
 */
@Controller
public class NewInformationController {

    @Autowired
    private DeviceService deviceService;

    @Autowired
    private MaterielSerivce materielSerivce;

    @RequestMapping("/showNewInformation")
    public String showPage(Model model) {
        model.addAttribute("devices", new DeviceInfoEntity());
        return "newInformation";
    }

    @ResponseBody
    @RequestMapping(value = "/addDeviceInfo", method = RequestMethod.POST)
    public String importDeviceInfo(DeviceInfoEntity deviceInfoEntity) {
        deviceInfoEntity.setDeviceCreateTime(new Timestamp(System.currentTimeMillis()));
        deviceInfoEntity.setDeviceStatus("否");
        boolean isAdd = deviceService.insertDeviceInfo(deviceInfoEntity);
        if (isAdd) {
            return "信息已添加！";
        } else {
            return "信息添加失败！";
        }
    }

    @RequestMapping(value = "/importMaterielInfo", method = RequestMethod.POST)
    public String importMaterielInfo(HttpServletRequest   request, @RequestParam("materielProject") String materielProject, @RequestParam("materielName") String materielName, @RequestParam("materielTotal") String materielTotal, @RequestParam("materielPosition") String materielPosition, @RequestParam("materielType") String materielType) {
        InputStream read =null;
        List<List<Object>> listob = null;
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        MultipartFile file= multipartRequest.getFile("importMateriel");
        if (file.isEmpty()){
        //新增用户手动输入数据
            MaterielInfoEntity materiel = new MaterielInfoEntity();
            //物料所属项目
            materiel.setMaterielProject(materielProject);
            //物料所属类型
            materiel.setMaterielType(materielType);
            //物料名字
            materiel.setMaterielName(materielName);
            //物料数量
            materiel.setMaterielTotal(materielTotal);
            //物料位置
            materiel.setMaterielPosition(materielPosition);
            //入库时间
            materiel.setMaterielCreateTime(new Timestamp(System.currentTimeMillis()));
            materiel.setMaterielStatus("有效");
            materiel.setMaterielStock(materielTotal);
            materielSerivce.insrtMaterielInfo(materiel);
        }else {
        //读取excel表数据
            try {
                read=file.getInputStream();
                listob=new ImportExcelUtil().getBankListByExcel(read,file.getOriginalFilename());
            //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出
               for (int i = 0; i < listob.size(); i++) {
                    List<Object> lo = listob.get(i);
                        MaterielInfoEntity materiel = new MaterielInfoEntity();
                        //物料所属项目
                        materiel.setMaterielProject(String.valueOf(lo.get(1)));
                        //物料所属类型
                        materiel.setMaterielType(String.valueOf(lo.get(2)));
                        //物料名字
                        materiel.setMaterielName(String.valueOf(lo.get(3)));
                        //物料数量
                        materiel.setMaterielTotal(String.valueOf(lo.get(4)));
                        //物料位置
                        materiel.setMaterielPosition(String.valueOf(lo.get(6)));
                        //入库时间
                        materiel.setMaterielCreateTime(new Timestamp(System.currentTimeMillis()));
                        materiel.setMaterielStatus("有效");
                        materiel.setMaterielStock(String.valueOf(lo.get(4)));
                        materielSerivce.insrtMaterielInfo(materiel);
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }


        }
        return "redirect:/showMaterielManagement";
    }

}
