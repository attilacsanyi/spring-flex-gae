package org.flex.examples.domain;

import java.lang.Integer;
import java.lang.String;

privileged aspect Person_Roo_JavaBean {
    
    public String Person.getFirstName() {
        return this.firstName;
    }
    
    public void Person.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String Person.getLastName() {
        return this.lastName;
    }
    
    public void Person.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public Integer Person.getAge() {
        return this.age;
    }
    
    public void Person.setAge(Integer age) {
        this.age = age;
    }
    
}
