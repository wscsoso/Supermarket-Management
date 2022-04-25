package com.wsc.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

@Data
@TableName(value = "sys_user")  //数据表面
public class User {

    @TableId(type = IdType.AUTO)    //默认主键
    private Integer id;
    private String username;
    @JsonIgnore
    private String password;    //不在前段显示密码
    private String nickname;
    private String email;
//    @TableField(value = "phone") value里设置数据库指定字段（驼峰命名除外）
    private String phone;
    private String address;

}
