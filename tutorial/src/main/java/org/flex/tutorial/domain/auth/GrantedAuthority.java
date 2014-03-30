package org.flex.tutorial.domain.auth;

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
@Table(name = "granted_authority")
public class GrantedAuthority {

    @NotNull
    @Column(name = "authority")
    @Size(min = 4)
    private String authority;

    @NotNull
    @Column(name = "description")
    private String description;
}
