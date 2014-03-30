package com.login.entity;

import com.login.entity.AuthorityEntity;
import java.lang.Boolean;
import java.lang.String;
import java.util.Set;

privileged aspect UserEntity_Roo_JavaBean {
    
    public Set<AuthorityEntity> UserEntity.getAuthorities() {
        return this.authorities;
    }
    
    public void UserEntity.setAuthorities(Set<AuthorityEntity> authorities) {
        this.authorities = authorities;
    }
    
    public String UserEntity.getPassword() {
        return this.password;
    }
    
    public void UserEntity.setPassword(String password) {
        this.password = password;
    }
    
    public String UserEntity.getUsername() {
        return this.username;
    }
    
    public void UserEntity.setUsername(String username) {
        this.username = username;
    }
    
    public Boolean UserEntity.getAccountNonExpired() {
        return this.accountNonExpired;
    }
    
    public void UserEntity.setAccountNonExpired(Boolean accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }
    
    public Boolean UserEntity.getAccountNonLocked() {
        return this.accountNonLocked;
    }
    
    public void UserEntity.setAccountNonLocked(Boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }
    
    public Boolean UserEntity.getCredentialsNonExpired() {
        return this.credentialsNonExpired;
    }
    
    public void UserEntity.setCredentialsNonExpired(Boolean credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }
    
    public Boolean UserEntity.getEnabled() {
        return this.enabled;
    }
    
    public void UserEntity.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
}
