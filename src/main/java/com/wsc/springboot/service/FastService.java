package com.wsc.springboot.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wsc.springboot.entity.Fast;
import com.wsc.springboot.mapper.FastMapper;
import org.springframework.stereotype.Service;

@Service
public class FastService extends ServiceImpl<FastMapper, Fast> {

}
