package org.flex.tutorial.domain.model;

import java.lang.Integer;
import java.lang.String;
import org.flex.tutorial.domain.auth.UserDetails;

privileged aspect UserInfo_Roo_JavaBean {
    
    public String UserInfo.getFirstname() {
        return this.firstname;
    }
    
    public void UserInfo.setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
    public String UserInfo.getLastname() {
        return this.lastname;
    }
    
    public void UserInfo.setLastname(String lastname) {
        this.lastname = lastname;
    }
    
    public Integer UserInfo.getAge() {
        return this.age;
    }
    
    public void UserInfo.setAge(Integer age) {
        this.age = age;
    }
    
    public UserDetails UserInfo.getUserDetails() {
        return this.userDetails;
    }
    
    public void UserInfo.setUserDetails(UserDetails userDetails) {
        this.userDetails = userDetails;
    }
    
}
