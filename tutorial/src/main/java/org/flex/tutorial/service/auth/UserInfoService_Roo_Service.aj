package org.flex.tutorial.service.auth;

import java.lang.Long;
import java.util.List;
import org.flex.tutorial.domain.model.UserInfo;

privileged aspect UserInfoService_Roo_Service {
    
    public UserInfo UserInfoService.create(UserInfo userInfo) {
        userInfo.persist();
        return userInfo;
    }
    
    public UserInfo UserInfoService.show(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        return UserInfo.findUserInfo(id);
    }
    
    public List<UserInfo> UserInfoService.list() {
        return UserInfo.findAllUserInfoes();
    }
    
    public List<UserInfo> UserInfoService.listPaged(Integer page, Integer size) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            return UserInfo.findUserInfoEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo);
        } else {
            return list();
        }
    }
    
    public UserInfo UserInfoService.update(UserInfo userInfo) {
        if (userInfo == null) throw new IllegalArgumentException("A userInfo is required");
        userInfo.merge();
        return userInfo;
    }
    
    public void UserInfoService.remove(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        UserInfo.findUserInfo(id).remove();
    }
    
}
