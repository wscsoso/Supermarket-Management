import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from "../views/Login";
import Register from "../views/Register";

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    children:[]
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },{
    path: '/login',
    name: 'Login',
    component: () => import('../views/Login.vue')
  },{
    path: '/Register',
    name: 'Register',
    component: () => import('../views/Register.vue')
  },{
    path: '/food',
    name: 'Food',
    component: () => import('../views/Food.vue')
  },{
    path: '/fast',
    name: 'Fast',
    component: () => import('../views/Fast.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
