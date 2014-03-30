package com.flexgae.entity;

import javax.persistence.Entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;

@Entity
@RooJavaBean
@RooToString
@RooEntity
@Table(name = "user")
public class UserEntity {

    @NotNull
    @Column(name = "username")
    @Size(min = 2, max = 20)
    private String username;

    @NotNull
    @Column(name = "password")
    @Size(min = 2)
    private String password;

    @NotNull
    @Column(name = "age")
    private Integer age;

    @NotNull
    @Column(name = "sex")
    private Boolean sex;
}
