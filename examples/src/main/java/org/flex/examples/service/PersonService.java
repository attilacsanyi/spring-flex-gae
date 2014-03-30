package org.flex.examples.service;

import org.springframework.flex.roo.addon.RooFlexScaffold;
import org.flex.examples.domain.Person;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@RooFlexScaffold(entity = Person.class)
@RemotingDestination
@Service
public class PersonService {
}
