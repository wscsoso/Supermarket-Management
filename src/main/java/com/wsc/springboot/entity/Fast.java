package com.wsc.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "sys_fast")  //数据表名
public class Fast {

    @TableId(type = IdType.AUTO)    //默认主键
    private Integer id;
    private String name;
    private Integer price;
    private String company;
    //保质期
    private String qgp;
    private String comment;
}
