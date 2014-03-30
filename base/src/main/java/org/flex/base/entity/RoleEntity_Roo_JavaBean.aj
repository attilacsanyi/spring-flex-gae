package org.flex.base.entity;

import java.lang.String;

privileged aspect RoleEntity_Roo_JavaBean {
    
    public String RoleEntity.getName() {
        return this.name;
    }
    
    public void RoleEntity.setName(String name) {
        this.name = name;
    }
    
    public String RoleEntity.getDescription() {
        return this.description;
    }
    
    public void RoleEntity.setDescription(String description) {
        this.description = description;
    }
    
}
