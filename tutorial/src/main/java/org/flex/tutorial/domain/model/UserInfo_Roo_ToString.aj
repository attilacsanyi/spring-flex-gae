package org.flex.tutorial.domain.model;

import java.lang.String;

privileged aspect UserInfo_Roo_ToString {
    
    public String UserInfo.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Firstname: ").append(getFirstname()).append(", ");
        sb.append("Lastname: ").append(getLastname()).append(", ");
        sb.append("Age: ").append(getAge()).append(", ");
        sb.append("UserDetails: ").append(getUserDetails());
        return sb.toString();
    }
    
}
