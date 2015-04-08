package com.asfusion.helloworld.cairngorm.control
{
	import com.adobe.cairngorm.control.FrontController;	
	import com.asfusion.helloworld.cairngorm.event.*;
	import com.asfusion.helloworld.cairngorm.command.*;

	public class Controller extends FrontController
	{
		public function Controller()
		{
			initialiseCommands();
		}
		
		public function initialiseCommands() : void
		{
			addCommand( MessageEvent.GET_MESSAGE, GetMessageCommand );
		}
	}
	
}