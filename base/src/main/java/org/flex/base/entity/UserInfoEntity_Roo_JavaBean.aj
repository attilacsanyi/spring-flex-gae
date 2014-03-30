package org.flex.base.entity;

import java.lang.Integer;
import java.lang.String;
import org.flex.base.entity.LoginEntity;

privileged aspect UserInfoEntity_Roo_JavaBean {
    
    public String UserInfoEntity.getFirstname() {
        return this.firstname;
    }
    
    public void UserInfoEntity.setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
    public String UserInfoEntity.getLastname() {
        return this.lastname;
    }
    
    public void UserInfoEntity.setLastname(String lastname) {
        this.lastname = lastname;
    }
    
    public Integer UserInfoEntity.getAge() {
        return this.age;
    }
    
    public void UserInfoEntity.setAge(Integer age) {
        this.age = age;
    }
    
    public LoginEntity UserInfoEntity.getLogin() {
        return this.login;
    }
    
    public void UserInfoEntity.setLogin(LoginEntity login) {
        this.login = login;
    }
    
}
