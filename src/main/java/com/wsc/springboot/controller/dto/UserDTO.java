package com.wsc.springboot.controller.dto;

import lombok.Data;

/**
 * 登入页面接受的用户名和密码
 */
@Data
public class UserDTO {
    private String username;
    private String password;
}
