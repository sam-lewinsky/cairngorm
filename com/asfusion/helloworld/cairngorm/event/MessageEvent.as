package com.asfusion.helloworld.cairngorm.event
{
	import flash.events.Event;
	import com.adobe.cairngorm.control.CairngormEvent;

	public class MessageEvent extends CairngormEvent
	{
		public static var GET_MESSAGE:String = "getMessage";

		public var name:String;
		
		/**
		 * Constructor.
		 */
		public function MessageEvent(type:String)
		{
			super( type );
		}
     	
     	/**
     	 * Override the inherited clone() method, but don't return any state.
     	 */
		override public function clone() : Event
		{
			return new MessageEvent(this.type);
		}	
	}
	
}