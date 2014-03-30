package org.flex.tutorial.service.auth;

import org.springframework.flex.roo.addon.RooFlexScaffold;
import org.flex.tutorial.domain.auth.GrantedAuthority;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@RooFlexScaffold(entity = GrantedAuthority.class)
@RemotingDestination
@Service
public class GrantedAuthorityService {
}
