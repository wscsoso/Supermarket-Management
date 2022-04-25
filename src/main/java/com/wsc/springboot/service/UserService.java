package com.wsc.springboot.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wsc.springboot.controller.dto.UserDTO;
import com.wsc.springboot.entity.User;
import com.wsc.springboot.mapper.UserMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService extends ServiceImpl<UserMapper,User> {
    public boolean saveUser(User user) {
//        if (user.getId() == null){
//            return  save(user);     //mybatis-plus （ServiceImpl）提供的方法，表示插入数据
//        }else {
//            return updateById(user);
//        }
        return saveOrUpdate(user);


    }

    public boolean login(UserDTO userDTO) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", userDTO.getUsername());
        queryWrapper.eq("password", userDTO.getPassword());
//        User one = getOne(queryWrapper);
        List<User> list = list(queryWrapper);
        return list.size() != 0;       //允许相同的两个用户和密码
    }

    public boolean register(UserDTO userDTO) {
        User user = new User();
        String username = userDTO.getUsername();
        String password = userDTO.getPassword();
        user.setUsername(username);
        user.setPassword(password);
        return save(user);
    }

//    @Autowired
//    private UserMapper userMapper;

//    public int save(User user) {
//        if (user.getId() == null) {  // user没有id，则表示是新增
//            return userMapper.insert(user);
//        } else { // 否则为更新
//            return userMapper.update(user);
//        }
//    }

}
