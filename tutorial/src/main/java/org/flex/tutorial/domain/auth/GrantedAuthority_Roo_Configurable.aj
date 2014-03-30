package org.flex.tutorial.domain.auth;

import org.springframework.beans.factory.annotation.Configurable;

privileged aspect GrantedAuthority_Roo_Configurable {
    
    declare @type: GrantedAuthority: @Configurable;
    
}
