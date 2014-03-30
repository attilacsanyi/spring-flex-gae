package com.flexgae.entity;

import java.lang.String;

privileged aspect UserEntity_Roo_ToString {
    
    public String UserEntity.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Username: ").append(getUsername()).append(", ");
        sb.append("Password: ").append(getPassword()).append(", ");
        sb.append("Age: ").append(getAge()).append(", ");
        sb.append("Sex: ").append(getSex());
        return sb.toString();
    }
    
}
