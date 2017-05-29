package com.github.mahui53541.accounting.controller;

import com.github.mahui53541.accounting.model.Resource;
import com.github.mahui53541.accounting.service.ResourceService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
    public Map<String,Object> getPosts() throws Exception{
        List<Resource> resource=resourceService.selectAll();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("user",resource);
        return map;
    }
    @RequestMapping(value = "/example", method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> example(@RequestParam(required=false) String parentResourceSn) throws Exception{
        Example example=new Example(Resource.class);
        Example.Criteria criteria=example.createCriteria();
        if(parentResourceSn!=null&&parentResourceSn.trim().length()>0){
            criteria.andEqualTo("parentResourceSn",parentResourceSn);
        }else{
            criteria.andIsNull("parentResourceSn");
        }
        List<Resource> resource=resourceService.selectByExample(example);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("user",resource);
        return map;
    }
}
