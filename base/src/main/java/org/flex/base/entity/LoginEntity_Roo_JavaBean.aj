package org.flex.base.entity;

import java.lang.Boolean;
import java.lang.String;
import java.util.Set;
import org.flex.base.entity.RoleEntity;
import org.flex.base.entity.UserInfoEntity;

privileged aspect LoginEntity_Roo_JavaBean {
    
    public Set<RoleEntity> LoginEntity.getRoles() {
        return this.roles;
    }
    
    public void LoginEntity.setRoles(Set<RoleEntity> roles) {
        this.roles = roles;
    }
    
    public String LoginEntity.getPassword() {
        return this.password;
    }
    
    public void LoginEntity.setPassword(String password) {
        this.password = password;
    }
    
    public String LoginEntity.getUsername() {
        return this.username;
    }
    
    public void LoginEntity.setUsername(String username) {
        this.username = username;
    }
    
    public Boolean LoginEntity.getAccountNonExpired() {
        return this.accountNonExpired;
    }
    
    public void LoginEntity.setAccountNonExpired(Boolean accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }
    
    public Boolean LoginEntity.getAccountNonLocked() {
        return this.accountNonLocked;
    }
    
    public void LoginEntity.setAccountNonLocked(Boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }
    
    public Boolean LoginEntity.getCredentialsNonExpired() {
        return this.credentialsNonExpired;
    }
    
    public void LoginEntity.setCredentialsNonExpired(Boolean credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }
    
    public Boolean LoginEntity.getEnabled() {
        return this.enabled;
    }
    
    public void LoginEntity.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
    public UserInfoEntity LoginEntity.getUserInfo() {
        return this.userInfo;
    }
    
    public void LoginEntity.setUserInfo(UserInfoEntity userInfo) {
        this.userInfo = userInfo;
    }
    
}
