package org.flex.tutorial.service.auth;

import java.lang.Long;
import java.util.List;
import org.flex.tutorial.domain.auth.GrantedAuthority;

privileged aspect GrantedAuthorityService_Roo_Service {
    
    public GrantedAuthority GrantedAuthorityService.create(GrantedAuthority grantedAuthority) {
        grantedAuthority.persist();
        return grantedAuthority;
    }
    
    public GrantedAuthority GrantedAuthorityService.show(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        return GrantedAuthority.findGrantedAuthority(id);
    }
    
    public List<GrantedAuthority> GrantedAuthorityService.list() {
        return GrantedAuthority.findAllGrantedAuthoritys();
    }
    
    public List<GrantedAuthority> GrantedAuthorityService.listPaged(Integer page, Integer size) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            return GrantedAuthority.findGrantedAuthorityEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo);
        } else {
            return list();
        }
    }
    
    public GrantedAuthority GrantedAuthorityService.update(GrantedAuthority grantedAuthority) {
        if (grantedAuthority == null) throw new IllegalArgumentException("A grantedAuthority is required");
        grantedAuthority.merge();
        return grantedAuthority;
    }
    
    public void GrantedAuthorityService.remove(Long id) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        GrantedAuthority.findGrantedAuthority(id).remove();
    }
    
}
