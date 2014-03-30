package org.flex.tutorial.service.auth;

import org.springframework.flex.roo.addon.RooFlexScaffold;
import org.flex.tutorial.domain.model.UserInfo;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@RooFlexScaffold(entity = UserInfo.class)
@RemotingDestination
@Service
public class UserInfoService {
}
