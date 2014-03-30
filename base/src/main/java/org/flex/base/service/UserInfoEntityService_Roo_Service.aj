package org.flex.base.service;

import java.lang.Long;
import java.util.List;
import org.flex.base.entity.UserInfoEntity;

privileged aspect UserInfoEntityService_Roo_Service {
    
    public UserInfoEntity UserInfoEntityService.create(UserInfoEntity userInfoEntity) {
        userInfoEntity.persist();
        return userInfoEntity;
    }
    
    public UserInfoEntity UserInfoEntityService.show(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        return UserInfoEntity.findUserInfoEntity(id);
    }
    
    public List<UserInfoEntity> UserInfoEntityService.list() {
        return UserInfoEntity.findAllUserInfoEntitys();
    }
    
    public List<UserInfoEntity> UserInfoEntityService.listPaged(Integer page, Integer size) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            return UserInfoEntity.findUserInfoEntityEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo);
        } else {
            return list();
        }
    }
    
    public UserInfoEntity UserInfoEntityService.update(UserInfoEntity userInfoEntity) {
        if (userInfoEntity == null) throw new IllegalArgumentException("A userInfoEntity is required");
        userInfoEntity.merge();
        return userInfoEntity;
    }
    
    public void UserInfoEntityService.remove(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        UserInfoEntity.findUserInfoEntity(id).remove();
    }
    
}
