package com.login.entity;

import java.lang.String;

privileged aspect AuthorityEntity_Roo_JavaBean {
    
    public String AuthorityEntity.getName() {
        return this.name;
    }
    
    public void AuthorityEntity.setName(String name) {
        this.name = name;
    }
    
    public String AuthorityEntity.getDescription() {
        return this.description;
    }
    
    public void AuthorityEntity.setDescription(String description) {
        this.description = description;
    }
    
}
