package com.wsc.springboot.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.wsc.springboot.entity.Fast;
import com.wsc.springboot.entity.Fruit;
import com.wsc.springboot.service.FastService;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin

@RestController
@RequestMapping("/fast")
public class FastController {

    @Autowired
    private FastService fastService;

    @GetMapping
    public List<Fast> findAll(){
        List<Fast> list = fastService.list();
        return list;
    }

    @PostMapping("/saveOrUpdate")
    public boolean saveOrUpdate(@RequestBody Fast fast){
        return fastService.saveOrUpdate(fast);
    }

    @DeleteMapping("/{id}")
    public boolean delete(@PathVariable Integer id){
        return  fastService.removeById(id);
    }

    @PostMapping("/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids) {
        return fastService.removeByIds(ids);
    }

    @GetMapping("/page")
    public IPage<Fast> findPage(@RequestParam Integer pageNum,
                                @RequestParam Integer pageSize,
                                @RequestParam(defaultValue = "") String name,
                                @RequestParam(defaultValue = "") String price,
                                @RequestParam(defaultValue = "") String qgp) {
        IPage<Fast> page = new Page<>(pageNum, pageSize);
        QueryWrapper<Fast> queryWrapper = new QueryWrapper<>();
        if (!"".equals(name)) {
            queryWrapper.like("name", name);
        }
        if (!"".equals(price)) {
            queryWrapper.like("price", price);
        }
        if (!"".equals(qgp)) {
            queryWrapper.like("qgp", qgp);
        }
        queryWrapper.orderByDesc("id"); //倒吸显示
        IPage<Fast> page1 = fastService.page(page, queryWrapper);
        return page1;
    }
}
