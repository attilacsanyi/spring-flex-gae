package org.flex.tutorial.domain.auth;

import java.lang.Boolean;
import java.lang.String;
import java.util.Set;
import org.flex.tutorial.domain.auth.GrantedAuthority;
import org.flex.tutorial.domain.model.UserInfo;

privileged aspect UserDetails_Roo_JavaBean {
    
    public Set<GrantedAuthority> UserDetails.getAuthorities() {
        return this.authorities;
    }
    
    public void UserDetails.setAuthorities(Set<GrantedAuthority> authorities) {
        this.authorities = authorities;
    }
    
    public String UserDetails.getPassword() {
        return this.password;
    }
    
    public void UserDetails.setPassword(String password) {
        this.password = password;
    }
    
    public String UserDetails.getUsername() {
        return this.username;
    }
    
    public void UserDetails.setUsername(String username) {
        this.username = username;
    }
    
    public Boolean UserDetails.getAccountNonExpired() {
        return this.accountNonExpired;
    }
    
    public void UserDetails.setAccountNonExpired(Boolean accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }
    
    public Boolean UserDetails.getAccountNonLocked() {
        return this.accountNonLocked;
    }
    
    public void UserDetails.setAccountNonLocked(Boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }
    
    public Boolean UserDetails.getCredentialsNonExpired() {
        return this.credentialsNonExpired;
    }
    
    public void UserDetails.setCredentialsNonExpired(Boolean credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }
    
    public Boolean UserDetails.getEnabled() {
        return this.enabled;
    }
    
    public void UserDetails.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
    public UserInfo UserDetails.getUserInfo() {
        return this.userInfo;
    }
    
    public void UserDetails.setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
    
}
