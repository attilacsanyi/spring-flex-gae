package com.flexgae.service;

import org.springframework.flex.roo.addon.RooFlexScaffold;
import com.flexgae.entity.UserEntity;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@RooFlexScaffold(entity = UserEntity.class)
@RemotingDestination
@Service
public class UserService {
}
