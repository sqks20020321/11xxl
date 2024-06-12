package com.it.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import com.it.dao.*;
import com.it.entity.*;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class ProductController extends BaseController {

	@Resource
	ProductDAO productDAO;
	@Resource
	CategoryDAO categoryDAO;
    @Resource
    SysuserDAO sysuserDAO;

    @Resource
    BrandDAO brandDAO;
    @Resource
    UtilController utilController;
	//商品列表
	@ResponseBody
	@RequestMapping("admin/productList")
	public HashMap<String,Object> productList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
	    String key = request.getParameter("key");
		String categoryid = request.getParameter("categoryid");
        String brandid = request.getParameter("brandid");
        String issj = request.getParameter("issj");
        String childid = request.getParameter("childid");
        String minprice = request.getParameter("minprice");
        String maxprice = request.getParameter("maxprice");
        String rank = request.getParameter("rank");
        String flag = request.getParameter("flag");
        String istj = request.getParameter("istj");   //前台首页推荐商品

		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("categoryid", categoryid);
        map.put("childid", childid);
        map.put("istj", istj);
        map.put("issj", issj);
        map.put("brandid", brandid);
        map.put("minprice", minprice);
        map.put("maxprice", maxprice);

        //排序
        map.put("rank", rank);
        map.put("flag", flag);


		List<Product> objectlist = productDAO.selectAll(map);
		for(Product product:objectlist){
			Category category = categoryDAO.findById(product.getCategoryid());
			product.setCategory(category);

            Category ccategory = categoryDAO.findById(product.getChildid());
            product.setCcategory(ccategory);


            Brand brand = brandDAO.findById(product.getBrandid());
            product.setBrand(brand);


            int kc = utilController.getInventory(product.getId(), request);
            product.setKc(kc);

			

 		}
		PageHelper.startPage(pageNum, pageSize);
		List<Product> list = productDAO.selectAll(map);
		for(Product product:list){
			Category category = categoryDAO.findById(product.getCategoryid());
			product.setCategory(category);

            Category ccategory = categoryDAO.findById(product.getChildid());
            product.setCcategory(ccategory);

            Brand brand = brandDAO.findById(product.getBrandid());
            product.setBrand(brand);

            int kc = utilController.getInventory(product.getId(), request);
            product.setKc(kc);
			
 		}
		PageInfo<Product> pageInfo = new PageInfo<Product>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", objectlist);
		return res;
	}



    //前台商品列表
    @ResponseBody
    @RequestMapping("productLb")
    public HashMap<String,Object> productLb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
        Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
        String key = request.getParameter("key");
        String categoryid = request.getParameter("categoryid");
        String brandid = request.getParameter("brandid");
        String issj = request.getParameter("issj");
        String childid = request.getParameter("childid");
        String minprice = request.getParameter("minprice");
        String maxprice = request.getParameter("maxprice");
        String rank = request.getParameter("rank");
        String flag = request.getParameter("flag");
        String istj = request.getParameter("istj");   //前台首页推荐商品

        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap<String,String> map = new HashMap<String,String>();
        map.put("key", key);
        map.put("categoryid", categoryid);
        map.put("childid", childid);
        map.put("istj", istj);
        map.put("issj", issj);
        map.put("brandid", brandid);
        map.put("minprice", minprice);
        map.put("maxprice", maxprice);

        //排序
        map.put("rank", rank);
        map.put("flag", flag);


        List<Product> objectlist = productDAO.selectAll(map);
        for(Product product:objectlist){
            Category category = categoryDAO.findById(product.getCategoryid());
            product.setCategory(category);

            Category ccategory = categoryDAO.findById(product.getChildid());
            product.setCcategory(ccategory);


            Brand brand = brandDAO.findById(product.getBrandid());
            product.setBrand(brand);



        }
        PageHelper.startPage(pageNum, pageSize);
        List<Product> list = productDAO.selectAll(map);
        for(Product product:list){
            Category category = categoryDAO.findById(product.getCategoryid());
            product.setCategory(category);

            Category ccategory = categoryDAO.findById(product.getChildid());
            product.setCcategory(ccategory);

            Brand brand = brandDAO.findById(product.getBrandid());
            product.setBrand(brand);

        }
        PageInfo<Product> pageInfo = new PageInfo<Product>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);
        return res;
    }


    //随机商品（3）
    @ResponseBody
    @RequestMapping("randomproductList")
    public HashMap<String,Object> randomproductList(HttpServletRequest request){
        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap<String,String> map = new HashMap<String,String>();
        String issj = request.getParameter("issj");
        map.put("issj", issj);
        List<Product> objectlist = productDAO.selectrandom(map);
        res.put("list", objectlist);
        return res;
    }
		
	
	//商家商品
	@ResponseBody
	@RequestMapping("admin/productAdd")
	public HashMap<String,Object> productAdd(Product product ,HttpServletRequest request) {
		product.setDelstatus("0");
        product.setIssj("yes");
        product.setIstj("no");
		productDAO.add(product);
		return null;
	}
	
	//编辑商品
	@ResponseBody
	@RequestMapping("admin/productShow")
	public HashMap<String,Object> productShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Product product = productDAO.findById(id);
		Category fcategory = categoryDAO.findById(product.getCategoryid());
        Category ccategory = categoryDAO.findById(product.getChildid());
        Brand brand = brandDAO.findById(product.getBrandid());
        product.setBrand(brand);
        product.setFcategory(fcategory);
        product.setCcategory(ccategory);
		res.put("product", product);

        HashMap<String,String> map = new HashMap<String,String>();
        map.put("childid", String.valueOf(product.getChildid()));
		List<Product> lovelist = productDAO.selectAll(map);
		res.put("lovelist", lovelist);
		return res;
	}
	
	//编辑商品
	@ResponseBody
	@RequestMapping("admin/productEdit")
	public HashMap<String,Object> productEdit(Product product ,HttpServletRequest request) {
		productDAO.update(product);
		return null;
	}
	
	//删除商品
	@ResponseBody
	@RequestMapping("admin/productDel")
	public HashMap<String,Object> productDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		productDAO.delete(Integer.parseInt(id));
		return null;
	}

    /**
     * 商品上下架
     */

    @ResponseBody
    @RequestMapping("admin/issjedit")
    public void issjedit(int id,HttpServletRequest request) {
        Product product =  productDAO.findById(id);
        if(product.getIssj().equals("yes")){
            product.setIssj("no");
        }else{
            product.setIssj("yes");
        }
        productDAO.update(product);
    }

    /**
     * 管理员推荐
     */

    @ResponseBody
    @RequestMapping("admin/istjedit")
    public void istjedit(int id,HttpServletRequest request) {
        Product product =  productDAO.findById(id);
        if(product.getIstj().equals("yes")){
            product.setIstj("no");
        }else{
            product.setIstj("yes");
        }
        productDAO.update(product);
    }

}
