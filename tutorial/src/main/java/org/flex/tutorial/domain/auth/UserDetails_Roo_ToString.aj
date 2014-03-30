package org.flex.tutorial.domain.auth;

import java.lang.String;

privileged aspect UserDetails_Roo_ToString {
    
    public String UserDetails.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Authorities: ").append(getAuthorities() == null ? "null" : getAuthorities().size()).append(", ");
        sb.append("Password: ").append(getPassword()).append(", ");
        sb.append("Username: ").append(getUsername()).append(", ");
        sb.append("AccountNonExpired: ").append(getAccountNonExpired()).append(", ");
        sb.append("AccountNonLocked: ").append(getAccountNonLocked()).append(", ");
        sb.append("CredentialsNonExpired: ").append(getCredentialsNonExpired()).append(", ");
        sb.append("Enabled: ").append(getEnabled()).append(", ");
        sb.append("UserInfo: ").append(getUserInfo());
        return sb.toString();
    }
    
}
