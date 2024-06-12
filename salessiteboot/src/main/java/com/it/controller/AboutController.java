package com.it.controller;

import com.it.entity.About;
import com.it.dao.AboutDAO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

@Controller
public class AboutController extends com.it.controller.BaseController {

	@Resource
    AboutDAO aboutDAO;



    //修改规则公告
    @ResponseBody
    @RequestMapping("admin/aboutEdit")
    public void aboutEdit(About about, HttpServletRequest request) {
        aboutDAO.update(about);
    }

    /**
     * 查看信息
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("admin/aboutShow")
    public HashMap<String, Object> aboutShow(int id,HttpServletRequest request) {
        HashMap<String, Object> res = new HashMap<String, Object>();
        About about = aboutDAO.findById(id);
        res.put("about", about);
        return res;
    }





}
