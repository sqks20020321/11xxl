package com.it.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.it.dao.BrandDAO;
import com.it.dao.MemberDAO;
import com.it.dao.ProductDAO;
import com.it.entity.Brand;
import com.it.entity.Member;
import com.util.Info;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class BrandController extends BaseController {

	@Resource
    BrandDAO brandDAO;
    @Resource
    ProductDAO productDAO;
    @Resource
    MemberDAO memberDAO;
	//品牌列表
	@ResponseBody
	@RequestMapping("admin/brandList")
	public HashMap<String,Object> brandList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
	    String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap map = new HashMap();
		map.put("key", key);
		List<Brand> objectlist = brandDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Brand> list = brandDAO.selectAll(map);
		PageInfo<Brand> pageInfo = new PageInfo<Brand>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", objectlist);

		return res;
	}

	//添加品牌
	@ResponseBody
	@RequestMapping("admin/brandAdd")
	public HashMap<String,Object> brandAdd(Brand brand ,HttpServletRequest request) {
        brandDAO.add(brand);
		return null;
	}

    @ResponseBody
    @RequestMapping("admin/brandShow")
    public HashMap<String,Object> brandShow(int id,HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        Brand brand = brandDAO.findById(id);
        res.put("brand", brand);
        return res;
    }

    @ResponseBody
    @RequestMapping("admin/brandEdit")
    public HashMap<String,Object> brandEdit(Brand brand,HttpServletRequest request) {
        brandDAO.update(brand);
        return null;
    }
	

	
	//删除品牌
	@ResponseBody
	@RequestMapping("admin/brandDel")
	public HashMap<String,Object> brandDel(int id,HttpServletRequest request) {
		brandDAO.delete(id);
		return null;
	}

}
