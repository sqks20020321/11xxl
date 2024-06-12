package com.it.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import com.it.entity.*;
import com.it.dao.*;




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
public class CartController extends BaseController {

	@Resource
	CartDAO cartDAO;
	@Resource
	SysuserDAO sysuserDAO;
	@Resource
	ProductDAO productDAO;
    @Resource
    MemberDAO memberDAO;
	//购物车列表
	@ResponseBody
	@RequestMapping("cartList")
	public HashMap<String,Object> cartList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Member sessionmember = (Member) request.getSession().getAttribute("sessionmember");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap map = new HashMap();
		map.put("memberid", sessionmember.getId());
		List<Cart> objectlist = cartDAO.selectAll(map);
		double total = 0D;
		for(Cart cart:objectlist){
		    double xjtotal = 0D;
            Product product = productDAO.findById(cart.getProductid());
            total+=product.getPrice()*cart.getNum();
            xjtotal = product.getPrice()*cart.getNum();
            cart.setProduct(product);
            cart.setXjtotal(xjtotal);

        }
		PageHelper.startPage(pageNum, pageSize);
		List<Cart> list = cartDAO.selectAll(map);
		PageInfo<Cart> pageInfo = new PageInfo<Cart>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", objectlist);
        res.put("total", total);
		return res;
	}
		
	
	//添加购物车
	@ResponseBody
	@RequestMapping("cartAdd")
	public HashMap<String,Object> cartAdd(Cart cart ,HttpServletRequest request) {
        Member sessionmember = (Member) request.getSession().getAttribute("sessionmember");
        HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap map = new HashMap();
		map.put("memberid",sessionmember.getId() );
		map.put("productid",String.valueOf(cart.getProductid()));
		Product product = productDAO.findById(cart.getProductid());
            List<Cart> list = cartDAO.selectAll(map);
            if(list.size()==0){
                cart.setMemberid(sessionmember.getId());
                cart.setNum(1);
                cartDAO.add(cart);
            }else{
                Cart cart1 = list.get(0);
                cart1.setNum(cart1.getNum()+1);
                cartDAO.update(cart1);
            }
		return res;
	}
	
	
	
	//删除购物车
	@ResponseBody
	@RequestMapping("cartDel")
	public HashMap<String,Object> cartDel(int id,HttpServletRequest request) {
		cartDAO.delete(id);
		return null;
	}

    /**
     * 加数量
     */
    @ResponseBody
    @RequestMapping("increasenum")
    public HashMap<String,Object> increasenum(int id,HttpServletRequest request) {
        Cart cart = cartDAO.findById(id);
        cart.setNum(cart.getNum()+1);
        cartDAO.update(cart);
        return null;
    }

    /**
     * 减数量
     */
    @ResponseBody
    @RequestMapping("reduce")
    public HashMap<String,Object> reduce(int id,HttpServletRequest request) {
        Cart cart = cartDAO.findById(id);
            cart.setNum(cart.getNum()-1);
            cartDAO.update(cart);
        return null;
    }

}
