package com.it.controller;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.it.util.RedisUtils;


@RestController
public class SpringBootController {
    @Autowired
    private RedisUtils redisUtils;

    @RequestMapping(value = "/hello/{id}")
    public String hello(@PathVariable(value = "id") String id) {
        //查询缓存中是否存在
        boolean hasKey = redisUtils.exists(id);
        redisUtils.set(id, "110", 10L, TimeUnit.MINUTES);
        String str = "";
        if (hasKey) {
            //获取缓存
            Object object = redisUtils.get(id);
            System.out.println("从缓存获取的数据" + object);
            str = object.toString();
        } else {
            //从数据库中获取信息
            System.out.println("从数据库中获取数据");
            //数据插入缓存（set中的参数含义：key值，user对象，缓存存在时间10（long类型），时间单位）
            redisUtils.set(id, str, 10L, TimeUnit.MINUTES);
        }
        return str;
    }
}
