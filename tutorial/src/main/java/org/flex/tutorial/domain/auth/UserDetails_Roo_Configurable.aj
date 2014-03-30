package org.flex.tutorial.domain.auth;

import org.springframework.beans.factory.annotation.Configurable;

privileged aspect UserDetails_Roo_Configurable {
    
    declare @type: UserDetails: @Configurable;
    
}
