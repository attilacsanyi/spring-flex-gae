package org.flex.base.service;

import org.springframework.flex.roo.addon.RooFlexScaffold;
import org.flex.base.entity.LoginEntity;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@RooFlexScaffold(entity = LoginEntity.class)
@RemotingDestination
@Service
public class LoginEntityService {
}
