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

@Entity
@RooJavaBean
@RooToString
@RooEntity
@Table(name = "role")
@RooSerializable
public class RoleEntity {

    @NotNull
    @Column(name = "name")
    @Size(min = 4)
    private String name;

    @NotNull
    @Column(name = "description")
    private String description;
}
