package com.it.controller;
import com.it.dao.OrderdetailsDAO;
import com.it.entity.*;
import com.it.dao.MemberDAO;
import com.it.dao.MessageDAO;
import com.it.dao.ProductDAO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
public class MessageController extends BaseController {

	@Resource
    MessageDAO messageDAO;
    @Resource
    ProductDAO productDAO;
    @Resource
    MemberDAO memberDAO;
    @Resource
    OrderdetailsDAO orderdetailsDAO;

	//评价列表
	@ResponseBody
	@RequestMapping("admin/messageList")
	public HashMap<String,Object> messageList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
        Sysuser admin = (Sysuser) request.getSession().getAttribute("admin");
	    String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap map = new HashMap();
		map.put("key", key);
		if(admin.getUsertype().equals("商家")){
            map.put("sellerid", admin.getId());
        }
		List<Message> objectlist = messageDAO.selectAll(map);
		for(Message message:objectlist){
            Member member = memberDAO.findById(message.getMemberid());
            message.setMember(member);
            Product product = productDAO.findById(message.getProductid());
            message.setProduct(product);
        }
		PageHelper.startPage(pageNum, pageSize);
		List<Message> list = messageDAO.selectAll(map);
        for(Message message:list){
            Member member = memberDAO.findById(message.getMemberid());
            message.setMember(member);
            Product product = productDAO.findById(message.getProductid());
            message.setProduct(product);
        }
		PageInfo<Message> pageInfo = new PageInfo<Message>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", objectlist);
		return res;
	}


    @ResponseBody
    @RequestMapping("messageLb")
    public HashMap<String,Object> messageLb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
        String key = request.getParameter("key");
        String productid = request.getParameter("productid");
        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap map = new HashMap();
        map.put("key", key);
        map.put("productid", productid);
        List<Message> objectlist = messageDAO.selectAll(map);
        for(Message message:objectlist){
            Member member = memberDAO.findById(message.getMemberid());
            message.setMember(member);
            Product product = productDAO.findById(message.getProductid());
            message.setProduct(product);
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Message> list = messageDAO.selectAll(map);
        for(Message message:list){
            Member member = memberDAO.findById(message.getMemberid());
            message.setMember(member);
            Product product = productDAO.findById(message.getProductid());
            message.setProduct(product);
        }
        PageInfo<Message> pageInfo = new PageInfo<Message>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);

        return res;
    }
		
	
	//添加评价
	@ResponseBody
	@RequestMapping("massageAdd")
	public HashMap<String,Object> messageAdd(Message message ,HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        Member sessionmember = (Member) request.getSession().getAttribute("sessionmember");
        Product product = productDAO.findById(message.getProductid());

        HashMap map = new HashMap();
        map.put("memberid", sessionmember.getId());
        map.put("productid", product.getId());
        map.put("status", "交易完成");
        List<Orderdetails> list = orderdetailsDAO.selectAll(map);
        if(list.size()!=0){
            message.setMemberid(sessionmember.getId());
            message.setSavetime(Info.getDateStr());
            messageDAO.add(message);
            res.put("data", 200);
        }else{
            res.put("data", 400);
        }
		return res;
	}

    /**
     * 评价回复
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("admin/messageEdit")
    public HashMap<String,Object> messageEdit(HttpServletRequest request) {
        String id = request.getParameter("id");
        String hfcontent = request.getParameter("hfcontent");

        Message message = messageDAO.findById(Integer.parseInt(id));
        message.setHfcontent(hfcontent);
        messageDAO.update(message);
        return null;
    }
	

	
	//删除评价
	@ResponseBody
	@RequestMapping("admin/messageDel")
	public HashMap<String,Object> messageDel(int id,HttpServletRequest request) {
		messageDAO.delete(id);
		return null;
	}

}
