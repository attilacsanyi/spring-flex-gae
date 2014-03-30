package com.login.entity;

import javax.persistence.Entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.persistence.Table;
import java.util.Set;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;

@Entity
@RooJavaBean
@RooToString
@RooEntity
@Table(name = "user")
public class UserEntity {

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<com.login.entity.AuthorityEntity> authorities = new java.util.HashSet<com.login.entity.AuthorityEntity>();

    @NotNull
    @Column(name = "password")
    @Size(min = 2)
    private String password;

    @NotNull
    @Column(name = "username")
    @Size(min = 2, max = 20)
    private String username;

    @NotNull
    @Column(name = "account_non_expired")
    private Boolean accountNonExpired;

    @NotNull
    @Column(name = "account_non_locked")
    private Boolean accountNonLocked;

    @NotNull
    @Column(name = "credentials_non_expired")
    private Boolean credentialsNonExpired;

    @NotNull
    @Column(name = "enabled")
    private Boolean enabled;
}
