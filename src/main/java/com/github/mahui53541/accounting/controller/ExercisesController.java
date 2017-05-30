package com.github.mahui53541.accounting.controller;

import com.github.mahui53541.accounting.model.Exercises;
import com.github.mahui53541.accounting.service.ExercisesService;
import com.github.pagehelper.PageRowBounds;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import tk.mybatis.mapper.entity.Example;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mahui on 2017/5/29.
 */
@Controller
@RequestMapping("/exercises")
public class ExercisesController {
    @Autowired
    private ExercisesService exercisesService;
    @RequestMapping(value = "/query", method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> query(String asc,
                                       @RequestParam(required = false, defaultValue = "0") int offset,
                                       @RequestParam(required = false, defaultValue = "10") int limit,
                                    @RequestParam(required = true) String exercisesType) throws Exception{
        Map<String,Object> data=new HashMap<String,Object>();
        Example example=new Example(Exercises.class);
        Example.Criteria criteria=example.createCriteria();
        criteria.andEqualTo("exercisesType",exercisesType);
        PageRowBounds p=new PageRowBounds(offset,limit);
        List<Exercises> exercises=exercisesService.selectByExampleAndRowBounds(example,p);
        data.put("total", p.getTotal());
        data.put("rows", exercises);
        return data;
    }

    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request, @RequestParam("filename") String filename,
                                           @RequestParam("newName") String newName){
        String path=request.getServletContext().getRealPath("/files/exercises/");
        File file=new File(path+filename);
        HttpHeaders headers=new HttpHeaders();

        //显示下载的文件名
        String downloadFileName= newName+"."+FilenameUtils.getExtension(filename);
        try {
            downloadFileName=new String(downloadFileName.getBytes("UTF-8"),"iso-8859-1");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        headers.setContentDispositionFormData("attachment",downloadFileName);
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        try {
            return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers, HttpStatus.CREATED);
        } catch (IOException e) {
            return null;
        }

    }
}
