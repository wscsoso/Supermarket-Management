package com.wsc.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "sys_fruit")  //数据表名
public class Fruit {

    @TableId(type = IdType.AUTO)    //默认主键
    private Integer id;
    private String name;
    @TableField(value = "en_name") //value里设置数据库指定字段（驼峰命名除外）
    private String enName;
    private Integer price;
    private String source;
    private String taste;

}
