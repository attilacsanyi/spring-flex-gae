package org.flex.tutorial.presentation.userdetails
{
    import flash.events.Event;

    import org.flex.tutorial.domain.auth.UserDetails;

    public class UserDetailsEvent extends Event
    {
        public static const CREATE:String = "userDetailsCreate";
        public static const UPDATE:String = "userDetailsUpdate";
        public static const DELETE:String = "userDetailsDelete";

        public var userDetails:UserDetails;
        
        public function UserDetailsEvent(type:String, userDetails:UserDetails, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.userDetails = userDetails;
            super(type, bubbles, cancelable);
        }
    }
}