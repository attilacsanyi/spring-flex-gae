package org.flex.base.presentation.userinfoentity
{
    import flash.events.Event;

    import org.flex.base.entity.UserInfoEntity;

    public class UserInfoEntityEvent extends Event
    {
        public static const CREATE:String = "userInfoEntityCreate";
        public static const UPDATE:String = "userInfoEntityUpdate";
        public static const DELETE:String = "userInfoEntityDelete";

        public var userInfoEntity:UserInfoEntity;
        
        public function UserInfoEntityEvent(type:String, userInfoEntity:UserInfoEntity, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.userInfoEntity = userInfoEntity;
            super(type, bubbles, cancelable);
        }
    }
}