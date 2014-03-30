package org.flex.base.entity;

import java.lang.String;

privileged aspect RoleEntity_Roo_ToString {
    
    public String RoleEntity.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Description: ").append(getDescription());
        return sb.toString();
    }
    
}
