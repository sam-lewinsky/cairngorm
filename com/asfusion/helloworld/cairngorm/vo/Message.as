package com.asfusion.helloworld.cairngorm.vo
{
	import com.adobe.cairngorm.vo.IValueObject;
	
	[RemoteClass(alias="Message")]

	[Bindable]
	public class Message implements IValueObject
	{

		public var text:String = "";


		public function Message()
		{
		}

	}
}