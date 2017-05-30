package com.github.mahui53541.accounting.controller;
import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * Created by mahui on 2017/5/30.
 */
@Controller
public class PageController {
    @RequestMapping("/detail")
    public String getPages(){
        return "detail";
    }
    @RequestMapping("/test")
    public String getTest(){
        return "test";
    }

    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request, @RequestParam("filename") String filename){
        String path=request.getServletContext().getRealPath("/files/");
        File file=new File(path+filename);
        HttpHeaders headers=new HttpHeaders();
        //显示下载的文件名
        String downloadFileName=null;
        try {
            downloadFileName=new String(filename.getBytes("UTF-8"),"iso-8859-1");
        } catch (UnsupportedEncodingException e) {
            downloadFileName=filename;
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
