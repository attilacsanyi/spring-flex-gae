package  com.login.entity{
	import mx.collections.ArrayCollection;
	[RemoteClass(alias="com.login.entity.UserEntity")]
	public class UserEntity {
		public var accountNonExpired:Boolean;
		public var accountNonLocked:Boolean;
		public var authorities:ArrayCollection;
		public var credentialsNonExpired:Boolean;
		public var enabled:Boolean;
		public var id:Number=-1;
		public var password:String;
		public var username:String;
		public var version:int;
	}
}