package org.flex.base.service;

import java.lang.Long;
import java.util.List;
import org.flex.base.entity.LoginEntity;

privileged aspect LoginEntityService_Roo_Service {
    
    public LoginEntity LoginEntityService.create(LoginEntity loginEntity) {
        loginEntity.persist();
        return loginEntity;
    }
    
    public LoginEntity LoginEntityService.show(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        return LoginEntity.findLoginEntity(id);
    }
    
    public List<LoginEntity> LoginEntityService.list() {
        return LoginEntity.findAllLoginEntitys();
    }
    
    public List<LoginEntity> LoginEntityService.listPaged(Integer page, Integer size) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            return LoginEntity.findLoginEntityEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo);
        } else {
            return list();
        }
    }
    
    public LoginEntity LoginEntityService.update(LoginEntity loginEntity) {
        if (loginEntity == null) throw new IllegalArgumentException("A loginEntity is required");
        loginEntity.merge();
        return loginEntity;
    }
    
    public void LoginEntityService.remove(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        LoginEntity.findLoginEntity(id).remove();
    }
    
}
