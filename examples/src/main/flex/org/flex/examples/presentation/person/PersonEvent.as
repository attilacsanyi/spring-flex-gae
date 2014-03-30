package org.flex.examples.presentation.person
{
    import flash.events.Event;

    import org.flex.examples.domain.Person;

    public class PersonEvent extends Event
    {
        public static const CREATE:String = "personCreate";
        public static const UPDATE:String = "personUpdate";
        public static const DELETE:String = "personDelete";

        public var person:Person;
        
        public function PersonEvent(type:String, person:Person, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.person = person;
            super(type, bubbles, cancelable);
        }
    }
}