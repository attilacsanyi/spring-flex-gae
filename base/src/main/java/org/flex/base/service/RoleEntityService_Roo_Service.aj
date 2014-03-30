package org.flex.base.service;

import java.lang.Long;
import java.util.List;
import org.flex.base.entity.RoleEntity;

privileged aspect RoleEntityService_Roo_Service {
    
    public RoleEntity RoleEntityService.create(RoleEntity roleEntity) {
        roleEntity.persist();
        return roleEntity;
    }
    
    public RoleEntity RoleEntityService.show(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        return RoleEntity.findRoleEntity(id);
    }
    
    public List<RoleEntity> RoleEntityService.list() {
        return RoleEntity.findAllRoleEntitys();
    }
    
    public List<RoleEntity> RoleEntityService.listPaged(Integer page, Integer size) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            return RoleEntity.findRoleEntityEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo);
        } else {
            return list();
        }
    }
    
    public RoleEntity RoleEntityService.update(RoleEntity roleEntity) {
        if (roleEntity == null) throw new IllegalArgumentException("A roleEntity is required");
        roleEntity.merge();
        return roleEntity;
    }
    
    public void RoleEntityService.remove(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        RoleEntity.findRoleEntity(id).remove();
    }
    
}
