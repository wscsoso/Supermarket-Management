package com.wsc.springboot.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wsc.springboot.entity.Fruit;
import com.wsc.springboot.entity.User;
import com.wsc.springboot.mapper.FruitMapper;
import com.wsc.springboot.mapper.UserMapper;
import org.springframework.stereotype.Service;

@Service
public class FruitService extends ServiceImpl<FruitMapper, Fruit> {


}
