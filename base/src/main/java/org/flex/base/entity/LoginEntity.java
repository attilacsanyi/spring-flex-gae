package org.flex.base.entity;

import javax.persistence.Entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.persistence.Table;
import org.springframework.roo.addon.serializable.RooSerializable;
import java.util.Set;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;
import org.flex.base.entity.UserInfoEntity;
import javax.persistence.OneToOne;
import javax.persistence.JoinColumn;

@Entity
@RooJavaBean
@RooToString
@RooEntity
@Table(name = "login")
@RooSerializable
public class LoginEntity {

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<org.flex.base.entity.RoleEntity> roles = new java.util.HashSet<org.flex.base.entity.RoleEntity>();

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

    @OneToOne(targetEntity = UserInfoEntity.class, fetch = FetchType.LAZY)
    @JoinColumn
    private UserInfoEntity userInfo;
}
