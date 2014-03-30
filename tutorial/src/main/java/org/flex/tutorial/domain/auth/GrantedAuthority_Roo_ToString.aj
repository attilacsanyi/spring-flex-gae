package org.flex.tutorial.domain.auth;

import java.lang.String;

privileged aspect GrantedAuthority_Roo_ToString {
    
    public String GrantedAuthority.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Authority: ").append(getAuthority()).append(", ");
        sb.append("Description: ").append(getDescription());
        return sb.toString();
    }
    
}
