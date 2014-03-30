package org.flex.base.service;

import org.springframework.flex.roo.addon.RooFlexScaffold;
import org.flex.base.entity.RoleEntity;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@RooFlexScaffold(entity = RoleEntity.class)
@RemotingDestination
@Service
public class RoleEntityService {
}
