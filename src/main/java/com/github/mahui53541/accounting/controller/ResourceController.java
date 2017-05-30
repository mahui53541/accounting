package com.github.mahui53541.accounting.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.github.mahui53541.accounting.model.Resource;
import com.github.mahui53541.accounting.service.ResourceService;
import com.github.pagehelper.PageRowBounds;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mahui on 2017/5/29.
 */
@Controller
@RequestMapping("/resource")
public class ResourceController {
    @Autowired
    private ResourceService resourceService;

    @RequestMapping(value = "/query", method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> getResource(@RequestParam(required=false) String parentResourceSn) throws Exception{
        Example example=new Example(Resource.class);
        Example.Criteria criteria=example.createCriteria();
        if(parentResourceSn!=null&&parentResourceSn.trim().length()>0){
            criteria.andEqualTo("parentResourceSn",parentResourceSn);
        }else{
            criteria.andIsNull("parentResourceSn");
        }
        //PageRowBounds p=new PageRowBounds(2,3);
        List<Resource> resource=resourceService.selectByExample(example);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("data",resource);
        map.put("status","success");
        return map;
    }

    @RequestMapping(value="/getDetail")
    public ModelAndView getDetail(ModelAndView mv, @RequestParam String parentResourceSn){
        Example example=new Example(Resource.class);
        Example.Criteria criteria=example.createCriteria();
        criteria.andEqualTo("resourceSn",parentResourceSn);
        List<Resource> resource=resourceService.selectByExample(example);
        if(resource!=null && resource.size()>0){
            mv.addObject("status","success");
            mv.addObject("data", resource.get(0));
        }else{
            mv.addObject("status","error");
        }

        mv.setViewName("detail");
        return mv;
    }
    @RequestMapping(value = "/example", method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> example(@RequestParam(required=false) String parentResourceSn) throws Exception{
        Example example=new Example(Resource.class);
        Example.Criteria criteria=example.createCriteria();
        //PageHelper.startPage(2,3);
        if(parentResourceSn!=null&&parentResourceSn.trim().length()>0){
            criteria.andEqualTo("parentResourceSn",parentResourceSn);
        }else{
            criteria.andIsNull("parentResourceSn");
        }
        PageRowBounds p=new PageRowBounds(2,3);
        List<Resource> resource=resourceService.selectByExampleAndRowBounds(example,p);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("user",resource);
        map.put("total",p.getTotal());
        return map;
    }
}
