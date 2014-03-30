package org.flex.tutorial.presentation.userinfo
{
    import flash.events.Event;

    import org.flex.tutorial.domain.model.UserInfo;

    public class UserInfoEvent extends Event
    {
        public static const CREATE:String = "userInfoCreate";
        public static const UPDATE:String = "userInfoUpdate";
        public static const DELETE:String = "userInfoDelete";

        public var userInfo:UserInfo;
        
        public function UserInfoEvent(type:String, userInfo:UserInfo, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.userInfo = userInfo;
            super(type, bubbles, cancelable);
        }
    }
}