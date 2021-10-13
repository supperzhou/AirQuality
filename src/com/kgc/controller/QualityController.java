package com.kgc.controller;

import com.kgc.pojo.District;
import com.kgc.pojo.Quality;
import com.kgc.service.DistrictService;
import com.kgc.service.QualityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class QualityController {
    @Resource(name = "Quality")
    QualityService service;
    @Resource(name = "District")
    DistrictService service1;

    @RequestMapping("/show")
    public String getAll(@RequestParam(value = "districtId",required = true,defaultValue = "-1")int districtId,
                         Model model){
        List<Quality> all = service.getAll(districtId);
        List<District> all1 = service1.getAll();
        model.addAttribute("list",all);
        model.addAttribute("list2",all1);
        return "index";
    }


    @RequestMapping("/toadd")
    public String toadd(Model model){
        List<District> all1 = service1.getAll();
        model.addAttribute("list2",all1);
        return "add";
    }

    @RequestMapping("/add")
    public String  add(Quality q){
        int add = service.add(q);
        if(add>0){
            return "redirect:/show";
        }else{
            return "redirect:/toadd";
        }
    }


    @RequestMapping("/toselect")
    public String toselect(int id,Model model){
        List<District> all1 = service1.getAll();
        model.addAttribute("list2",all1);
        Quality byteId = service.getByteId(id);
        model.addAttribute("b",byteId);
        return "update";
    }

    @RequestMapping("/update")
    public String update(Quality q){
        int update = service.update(q);
        if(update>0){
            return "redirect:/update";
        }else{
            return "redirect:/show";
        }
    }


    @RequestMapping("/delete")
    @ResponseBody
    public String delete(int id){
        int delete = service.delete(id);
        if(delete>0){
            return "ok";
        }else{
            return "no";
        }
    }


}
