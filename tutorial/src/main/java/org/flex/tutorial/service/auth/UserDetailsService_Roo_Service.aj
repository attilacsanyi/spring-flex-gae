package org.flex.tutorial.service.auth;

import java.lang.Long;
import java.util.List;
import org.flex.tutorial.domain.auth.UserDetails;

privileged aspect UserDetailsService_Roo_Service {
    
    public UserDetails UserDetailsService.create(UserDetails userDetails) {
        userDetails.persist();
        return userDetails;
    }
    
    public UserDetails UserDetailsService.show(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        return UserDetails.findUserDetails(id);
    }
    
    public List<UserDetails> UserDetailsService.list() {
        return UserDetails.findAllUserDetailses();
    }
    
    public List<UserDetails> UserDetailsService.listPaged(Integer page, Integer size) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            return UserDetails.findUserDetailsEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo);
        } else {
            return list();
        }
    }
    
    public UserDetails UserDetailsService.update(UserDetails userDetails) {
        if (userDetails == null) throw new IllegalArgumentException("A userDetails is required");
        userDetails.merge();
        return userDetails;
    }
    
    public void UserDetailsService.remove(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        UserDetails.findUserDetails(id).remove();
    }
    
}
