package org.flex.tutorial.domain.model;

import org.springframework.beans.factory.annotation.Configurable;

privileged aspect UserInfo_Roo_Configurable {
    
    declare @type: UserInfo: @Configurable;
    
}
