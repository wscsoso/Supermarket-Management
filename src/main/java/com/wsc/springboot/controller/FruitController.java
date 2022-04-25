package com.wsc.springboot.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.wsc.springboot.entity.Fruit;
import com.wsc.springboot.service.FruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin

@RestController
@RequestMapping("/fruit")
public class FruitController {

    @Autowired
    private FruitService fruitService;

    // 查询所有数据
    @GetMapping
    public List<Fruit> findAll() {
        List<Fruit> all = fruitService.list();
        return all;
    }

    @DeleteMapping("/{id}")
    private boolean delById(@PathVariable Integer id){
        return fruitService.removeById(id);
    }
    @PostMapping("/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids) {
        return fruitService.removeByIds(ids);
    }

    @PostMapping("/save")
    public boolean save(@RequestBody Fruit fruit){
        boolean save = fruitService.saveOrUpdate(fruit);
        return save;
    }

    @GetMapping("/page")
    public IPage<Fruit> findPage(@RequestParam Integer pageNum,
                                @RequestParam Integer pageSize,
                                @RequestParam(defaultValue = "") String name,
                                @RequestParam(defaultValue = "") String source,
                                @RequestParam(defaultValue = "") String taste) {
        IPage<Fruit> page = new Page<>(pageNum, pageSize);
        QueryWrapper<Fruit> queryWrapper = new QueryWrapper<>();
        if (!"".equals(name)) {
            queryWrapper.like("name", name);
        }
        if (!"".equals(source)) {
            queryWrapper.like("source", source);
        }
        if (!"".equals(taste)) {
            queryWrapper.like("taste", taste);
        }
        queryWrapper.orderByDesc("id"); //倒吸显示
//        IPage<Fruit> page1 = fruitService.page(page, queryWrapper);
//        return page1;
        IPage<Fruit> page1 = fruitService.page(page, queryWrapper);
        return page1;
    }


}
