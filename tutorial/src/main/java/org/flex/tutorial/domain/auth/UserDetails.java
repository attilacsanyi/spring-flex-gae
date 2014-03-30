package org.flex.tutorial.domain.auth;

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
import org.flex.tutorial.domain.model.UserInfo;
import javax.persistence.OneToOne;
import javax.persistence.JoinColumn;

@Entity
@RooJavaBean
@RooToString
@RooEntity
@Table(name = "user_details")
public class UserDetails {

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<org.flex.tutorial.domain.auth.GrantedAuthority> authorities = new java.util.HashSet<org.flex.tutorial.domain.auth.GrantedAuthority>();

    @NotNull
    @Column(name = "PASSWORD")
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

    @OneToOne(targetEntity = UserInfo.class, fetch = FetchType.LAZY)
    @JoinColumn
    private UserInfo userInfo;
}
