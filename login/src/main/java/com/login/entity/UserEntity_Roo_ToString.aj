package com.login.entity;

import java.lang.String;

privileged aspect UserEntity_Roo_ToString {
    
    public String UserEntity.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Authorities: ").append(getAuthorities() == null ? "null" : getAuthorities().size()).append(", ");
        sb.append("Password: ").append(getPassword()).append(", ");
        sb.append("Username: ").append(getUsername()).append(", ");
        sb.append("AccountNonExpired: ").append(getAccountNonExpired()).append(", ");
        sb.append("AccountNonLocked: ").append(getAccountNonLocked()).append(", ");
        sb.append("CredentialsNonExpired: ").append(getCredentialsNonExpired()).append(", ");
        sb.append("Enabled: ").append(getEnabled());
        return sb.toString();
    }
    
}
