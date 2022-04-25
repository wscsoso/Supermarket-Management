<template>
  <el-container style="min-height: 100vh">

    <el-aside :width="sideWidth + 'px'" style="box-shadow: 2px 0 6px rgb(0 21 41 / 35%);">
      <el-menu :default-openeds="['1', '3']" style="min-height: 100%; overflow-x: hidden"
               background-color="rgb(48, 65, 86)"
               text-color="#fff"
               active-text-color="#ffd04b"
               :collapse-transition="false"
               :collapse="isCollapse"
      >
        <div style="height: 60px; line-height: 60px; text-align: center">
          <img src="../assets/logo.png" alt="" style="width: 20px; position: relative; top: 5px; right: 5px">
          <b style="color: white" v-show="logoTextShow">超市管理系统</b>
        </div>

        <el-submenu index="1">
          <template slot="title">
            <i class="el-icon-message"></i>
            <span slot="title" >用户管理</span>
          </template>
          <el-menu-item-group>
            <router-link to="/" style="text-decoration: none">
              <el-menu-item index="1-1">员工管理</el-menu-item>
            </router-link>

          </el-menu-item-group>

        </el-submenu>
        <el-submenu index="2" aria-expanded="true">
          <template slot="title">
            <i class="el-icon-menu"></i>
            <span slot="title">食物区</span>
          </template>
          <el-menu-item-group>
            <router-link to="/food" style="text-decoration: none">
              <el-menu-item index="2-1">水果管理</el-menu-item>
            </router-link>
          </el-menu-item-group>

          <el-menu-item-group>
            <router-link to="/fast" style="text-decoration: none">
              <el-menu-item index="2-2">速食管理</el-menu-item>
            </router-link>
          </el-menu-item-group>
        </el-submenu>

        <el-submenu index="3">
          <template slot="title">
            <i class="el-icon-setting"></i>
            <span slot="title">设置</span>
          </template>
          <!--          <el-submenu index="3-4">-->
          <!--            <template slot="title">选项4</template>-->
          <!--            <el-menu-item index="3-4-1">选项4-1</el-menu-item>-->
          <!--          </el-submenu>-->
          <el-menu-item-group>
            <el-menu-item index="3-1">待开发</el-menu-item>
          </el-menu-item-group>
        </el-submenu>
      </el-menu>
    </el-aside>

    <el-container>
      <el-header style="font-size: 12px; border-bottom: 1px solid #ccc; line-height: 60px; display: flex">
        <div style="flex: 1; font-size: 20px">
          <span :class="collapseBtnClass" style="cursor: pointer" @click="collapse"></span>
        </div>
        <el-dropdown style="width: 70px; cursor: pointer">
          <span>吴守椿</span><i class="el-icon-arrow-down" style="margin-left: 5px"></i>
          <el-dropdown-menu slot="dropdown" >
            <el-dropdown-item style="font-size: 14px; padding: 5px 0">个人信息</el-dropdown-item>
            <el-dropdown-item style="font-size: 14px; padding: 5px 0">
              <router-link to="/login" style="text-decoration: none">退出</router-link>
            </el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>

      </el-header>

      <el-main>
        <div style="margin-bottom: 30px">
          <el-breadcrumb separator="/">
            <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>食物区</el-breadcrumb-item>
          </el-breadcrumb>
        </div>

        <div style="margin: 10px 0">
          <el-input style="width: 200px" placeholder="请输入水果名称" suffix-icon="el-icon-search" v-model="name"></el-input>
          <el-input style="width: 200px" placeholder="请输入水果产地" suffix-icon="el-icon-message" class="ml-5" v-model="source"></el-input>
          <el-input style="width: 200px" placeholder="请输入你需要的味道" suffix-icon="el-icon-position" class="ml-5" v-model="taste"></el-input>
          <el-button class="ml-5" type="primary" @click="load">搜索</el-button>
          <el-button type="warning" @click="reset">重置</el-button>
        </div>

        <div style="margin: 10px 0">
          <el-button type="primary" @click="handleAdd">新增 <i class="el-icon-circle-plus-outline"></i></el-button>
          <el-button type="danger"  @click="delBatch">批量删除 <i class="el-icon-remove-outline"></i></el-button>
          <el-button type="primary">导入 <i class="el-icon-bottom"></i></el-button>
          <el-button type="primary">导出 <i class="el-icon-top"></i></el-button>
        </div>

        <el-table :data="tableData" border stripe :header-cell-class-name="headerBg"  @selection-change="handleSelectionChange">
          <el-table-column type="selection" width="55"></el-table-column>
          <el-table-column prop="id" label="产品编号" width="100"></el-table-column>
          <el-table-column prop="name" label="水果名" width="140"></el-table-column>
          <el-table-column prop="enName" label="英文名" width="140"></el-table-column>
          <el-table-column prop="price" label="价格" width="120"></el-table-column>
          <el-table-column prop="source" label="产地"></el-table-column>
          <el-table-column prop="taste" label="味道"></el-table-column>
          <el-table-column label="操作"  width="200" align="center">
            <template slot-scope="scope">
              <el-button type="success" @click="handleEdit(scope.row)">编辑 <i class="el-icon-edit"></i></el-button>
              <!--              <el-popconfirm-->
              <!--                      class="ml-5"-->
              <!--                      confirm-button-text='确定'-->
              <!--                      cancel-button-text='我再想想'-->
              <!--                      icon="el-icon-info"-->
              <!--                      icon-color="red"-->
              <!--                      title="您确定删除吗？"-->
              <!--                      @confirm="del(scope.row.id)"-->
              <!--              >-->
              <el-button type="danger"  slot="reference" @click="del(scope.row.id)">删除 <i class="el-icon-remove-outline"></i></el-button>
              <!--              </el-popconfirm>-->
            </template>
          </el-table-column>
        </el-table>
        <div style="padding: 10px 0">
          <el-pagination
                  @size-change="handleSizeChange"
                  @current-change="handleCurrentChange"
                  :current-page="pageNum"
                  :page-sizes="[5, 10, 20]"
                  :page-size="pageSize"
                  layout="total, sizes, prev, pager, next, jumper"
                  :total="total">
          </el-pagination>
        </div>

        <el-dialog title="新增用户信息" :visible.sync="dialogFormVisible" width="35%">
          <el-form label-width="80px" size="big">
            <el-form-item label="水果名">
              <el-input v-model="form.name" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="英文名">
              <el-input v-model="form.enName" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="价格">
              <el-input v-model="form.price" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="产地">
              <el-input v-model="form.source" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="味道">
              <el-input v-model="form.taste" autocomplete="off"></el-input>
            </el-form-item>

          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button @click="dialogFormVisible = false">取 消</el-button>
            <el-button type="primary" @click="save" >确 定</el-button>
          </div>
        </el-dialog>

      </el-main>

    </el-container>
  </el-container>
</template>

<script>

  import request from "../utils/request";

  export default {
    name: 'Food',
    data() {
      return {
        tableData: [],
        total: 0,
        pageNum: 1,
        pageSize: 10,
        name: "",
        source: "",
        taste: "",
        dialogFormVisible:false,
        form:{},
        multipleSelection:[],
        msg: "hello 吴守椿",
        collapseBtnClass: 'el-icon-s-fold',
        isCollapse: false,
        sideWidth: 200,
        logoTextShow: true,
        headerBg: 'headerBg'
      }
    },
    created() {
      // 请求分页查询数据
      this.load()
    },
    methods: {
      collapse() {  // 点击收缩按钮触发
        this.isCollapse = !this.isCollapse
        if (this.isCollapse) {  // 收缩
          this.sideWidth = 64
          this.collapseBtnClass = 'el-icon-s-unfold'
          this.logoTextShow = false
        } else {   // 展开
          this.sideWidth = 200
          this.collapseBtnClass = 'el-icon-s-fold'
          this.logoTextShow = true
        }
      },
      load() {
        request.get("/fruit/page",{
          params:{
            pageNum: this.pageNum,
            pageSize: this.pageSize,
            name: this.name,
            source: this.source,
            taste: this.taste
          }
        }).then(res => {
          console.log(res)
          this.tableData = res.records
          this.total = res.total
        })
      },
      save() {
        request.post("/fruit/save", this.form).then(res => {
          if (res) {
            this.$message.success("保存成功")
            this.dialogFormVisible = false
            this.load()
          } else {
            this.$message.error("保存失败")
          }
        })
      },
      handleAdd() {
        this.dialogFormVisible = true
        this.form = {}
      },
      handleEdit(row) {
        this.form = row
        this.dialogFormVisible = true
      },
      del(id){
        this.$confirm('此操作将永久删除, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(res =>{
          return request.delete("/fruit/" + id).then(res =>{
            if (res) {
              this.$message.success("删除成功")
              this.dialogFormVisible = false
              this.load()
            } else {
              this.$message.error("删除失败")
            }
          })
        })
      },
      handleSelectionChange(val){
        console.log(val)
        this.multipleSelection = val
      },
      delBatch(){
        this.$confirm('此操作将永久删除所选数据, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(res =>{
          let ids = this.multipleSelection.map(v => v.id)
          return request.post("/fruit/del/batch" ,ids).then(res =>{
            if (res) {
              this.$message.success("删除成功")
              this.dialogFormVisible = false
              this.load()
            } else {
              this.$message.error("删除失败")
            }
          })
        })
      },
      reset(){
        this.name = ""
        this.source = ""
        this.taste = ""
        this.load()
      },
      handleSizeChange(pageSize) {
        console.log(pageSize)
        this.pageSize = pageSize
        this.load()
      },
      handleCurrentChange(pageNum) {
        console.log(pageNum)
        this.pageNum = pageNum
        this.load()
      }
    }
  }
</script>

<style>
  .headerBg {
    background: #eee!important;
  }
</style>