package org.flex.base.entity;

import javax.persistence.Entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.persistence.Table;
import org.springframework.roo.addon.serializable.RooSerializable;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;
import org.flex.base.entity.LoginEntity;
import javax.persistence.OneToOne;
import javax.persistence.JoinColumn;

@Entity
@RooJavaBean
@RooToString
@RooEntity
@Table(name = "userinfo")
@RooSerializable
public class UserInfoEntity {

    @NotNull
    @Column(name = "firstname")
    @Size(min = 2, max = 20)
    private String firstname;

    @NotNull
    @Column(name = "lastname")
    @Size(min = 2, max = 20)
    private String lastname;

    @NotNull
    @Column(name = "AGE")
    private Integer age;

    @OneToOne(targetEntity = LoginEntity.class)
    @JoinColumn
    private LoginEntity login;
}
