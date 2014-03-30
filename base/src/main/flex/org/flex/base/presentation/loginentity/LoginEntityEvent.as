package org.flex.base.presentation.loginentity
{
    import flash.events.Event;

    import org.flex.base.entity.LoginEntity;

    public class LoginEntityEvent extends Event
    {
        public static const CREATE:String = "loginEntityCreate";
        public static const UPDATE:String = "loginEntityUpdate";
        public static const DELETE:String = "loginEntityDelete";

        public var loginEntity:LoginEntity;
        
        public function LoginEntityEvent(type:String, loginEntity:LoginEntity, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.loginEntity = loginEntity;
            super(type, bubbles, cancelable);
        }
    }
}