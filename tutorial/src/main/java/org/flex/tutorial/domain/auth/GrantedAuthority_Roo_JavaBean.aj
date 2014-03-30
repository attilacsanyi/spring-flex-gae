package org.flex.tutorial.domain.auth;

import java.lang.String;

privileged aspect GrantedAuthority_Roo_JavaBean {
    
    public String GrantedAuthority.getAuthority() {
        return this.authority;
    }
    
    public void GrantedAuthority.setAuthority(String authority) {
        this.authority = authority;
    }
    
    public String GrantedAuthority.getDescription() {
        return this.description;
    }
    
    public void GrantedAuthority.setDescription(String description) {
        this.description = description;
    }
    
}
