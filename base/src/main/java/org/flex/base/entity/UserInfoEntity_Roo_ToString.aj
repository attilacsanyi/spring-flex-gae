package org.flex.base.entity;

import java.lang.String;

privileged aspect UserInfoEntity_Roo_ToString {
    
    public String UserInfoEntity.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Firstname: ").append(getFirstname()).append(", ");
        sb.append("Lastname: ").append(getLastname()).append(", ");
        sb.append("Age: ").append(getAge()).append(", ");
        sb.append("Login: ").append(getLogin());
        return sb.toString();
    }
    
}
