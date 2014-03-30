package com.flexgae.entity;

import java.lang.Boolean;
import java.lang.Integer;
import java.lang.String;

privileged aspect UserEntity_Roo_JavaBean {
    
    public String UserEntity.getUsername() {
        return this.username;
    }
    
    public void UserEntity.setUsername(String username) {
        this.username = username;
    }
    
    public String UserEntity.getPassword() {
        return this.password;
    }
    
    public void UserEntity.setPassword(String password) {
        this.password = password;
    }
    
    public Integer UserEntity.getAge() {
        return this.age;
    }
    
    public void UserEntity.setAge(Integer age) {
        this.age = age;
    }
    
    public Boolean UserEntity.getSex() {
        return this.sex;
    }
    
    public void UserEntity.setSex(Boolean sex) {
        this.sex = sex;
    }
    
}
