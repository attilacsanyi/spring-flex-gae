package org.flex.tutorial.presentation.grantedauthority
{
    import flash.events.Event;

    import org.flex.tutorial.domain.auth.GrantedAuthority;

    public class GrantedAuthorityEvent extends Event
    {
        public static const CREATE:String = "grantedAuthorityCreate";
        public static const UPDATE:String = "grantedAuthorityUpdate";
        public static const DELETE:String = "grantedAuthorityDelete";

        public var grantedAuthority:GrantedAuthority;
        
        public function GrantedAuthorityEvent(type:String, grantedAuthority:GrantedAuthority, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.grantedAuthority = grantedAuthority;
            super(type, bubbles, cancelable);
        }
    }
}