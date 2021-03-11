package org.gac.lzj.avnt.controller;

import org.gac.lzj.avnt.entities.CarInfoEntity;
import org.gac.lzj.avnt.entities.DeviceInfoEntity;
import org.gac.lzj.avnt.entities.PageEntity;
import org.gac.lzj.avnt.service.CarService;
import org.gac.lzj.avnt.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class HomePageController {
    @Autowired
    private DeviceService deviceService;

    @Autowired
    private CarService carService;
    @RequestMapping("/homePage")
    public String homePage(){
        return "homePage";
    }


    /**
     * 首页搜索设备信息
     * @param searchType
     * @param searchContent
     * @param model
     * @return
     */
    @RequestMapping("/searchInfo")
    public String searchInfo(@RequestParam("searchType")String searchType, @RequestParam("searchContent")String searchContent, Model model){
      if(searchType.equals("测试工具")){
         List<DeviceInfoEntity> devices=deviceService.queryVagueDevicesInfo(searchContent);
          PageEntity<DeviceInfoEntity> devicePage=new PageEntity<DeviceInfoEntity>();
          devicePage.setDatas(devices);
          model.addAttribute("deviceInfo",devicePage);
      }else if (searchType.equals("实车")){
          List<CarInfoEntity> cars=  carService.queryVagueCarInfo(searchContent);
          PageEntity<CarInfoEntity> carPage=new PageEntity<CarInfoEntity>();
          carPage.setDatas(cars);
          model.addAttribute("casInfo",carPage);
      }else if(searchType.equals("物料")){

      }
        return "homePage";
    }

}
