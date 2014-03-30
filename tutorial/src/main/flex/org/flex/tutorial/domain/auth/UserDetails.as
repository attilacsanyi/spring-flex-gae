package  org.flex.tutorial.domain.auth{
	import mx.collections.ArrayCollection;
	import org.flex.tutorial.domain.model.UserInfo;
	[RemoteClass(alias="org.flex.tutorial.domain.auth.UserDetails")]
	public class UserDetails {
		public var accountNonExpired:Boolean;
		public var accountNonLocked:Boolean;
		public var authorities:ArrayCollection;
		public var credentialsNonExpired:Boolean;
		public var enabled:Boolean;
		public var id:Number=-1;
		public var password:String;
		public var userInfo:UserInfo;
		public var username:String;
		public var version:int;
	}
}