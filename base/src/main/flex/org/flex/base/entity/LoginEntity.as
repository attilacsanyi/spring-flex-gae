package  org.flex.base.entity{
	import mx.collections.ArrayCollection;
	[RemoteClass(alias="org.flex.base.entity.LoginEntity")]
	public class LoginEntity {
		public var accountNonExpired:Boolean;
		public var accountNonLocked:Boolean;
		public var credentialsNonExpired:Boolean;
		public var enabled:Boolean;
		public var id:Number=-1;
		public var password:String;
		public var roles:ArrayCollection;
		public var userInfo:UserInfoEntity;
		public var username:String;
		public var version:int;
	}
}