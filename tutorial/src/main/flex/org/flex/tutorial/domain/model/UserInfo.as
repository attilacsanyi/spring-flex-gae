package  org.flex.tutorial.domain.model{
	import org.flex.tutorial.domain.auth.UserDetails;
	[RemoteClass(alias="org.flex.tutorial.domain.model.UserInfo")]
	public class UserInfo {
		public var age:int;
		public var firstname:String;
		public var id:Number=-1;
		public var lastname:String;
		public var userDetails:UserDetails;
		public var version:int;
	}
}