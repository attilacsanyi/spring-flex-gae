package org.flex.base.service;

import org.springframework.flex.roo.addon.RooFlexScaffold;
import org.flex.base.entity.UserInfoEntity;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@RooFlexScaffold(entity = UserInfoEntity.class)
@RemotingDestination
@Service
public class UserInfoEntityService {
}
