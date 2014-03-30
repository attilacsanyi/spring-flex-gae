package com.login.presentation.authorityentity
{
    import flash.events.Event;

    import com.login.entity.AuthorityEntity;

    public class AuthorityEntityEvent extends Event
    {
        public static const CREATE:String = "authorityEntityCreate";
        public static const UPDATE:String = "authorityEntityUpdate";
        public static const DELETE:String = "authorityEntityDelete";

        public var authorityEntity:AuthorityEntity;
        
        public function AuthorityEntityEvent(type:String, authorityEntity:AuthorityEntity, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.authorityEntity = authorityEntity;
            super(type, bubbles, cancelable);
        }
    }
}