package org.flex.base.presentation.roleentity
{
    import flash.events.Event;

    import org.flex.base.entity.RoleEntity;

    public class RoleEntityEvent extends Event
    {
        public static const CREATE:String = "roleEntityCreate";
        public static const UPDATE:String = "roleEntityUpdate";
        public static const DELETE:String = "roleEntityDelete";

        public var roleEntity:RoleEntity;
        
        public function RoleEntityEvent(type:String, roleEntity:RoleEntity, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            this.roleEntity = roleEntity;
            super(type, bubbles, cancelable);
        }
    }
}