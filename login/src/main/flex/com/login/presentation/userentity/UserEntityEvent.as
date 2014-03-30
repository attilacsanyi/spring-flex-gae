package com.login.presentation.userentity
{
    import flash.events.Event;

    import com.login.entity.UserEntity;

    public class UserEntityEvent extends Event
    {
        public static const CREATE:String = "userEntityCreate";
        public static const UPDATE:String = "userEntityUpdate";
        public static const DELETE:String = "userEntityDelete";

        public var userEntity:UserEntity;
        
        public function UserEntityEvent(type:String, userEntity:UserEntity, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.userEntity = userEntity;
            super(type, bubbles, cancelable);
        }
    }
}