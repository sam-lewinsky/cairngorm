package com.asfusion.helloworld.cairngorm.command
{
	import mx.rpc.IResponder;
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import mx.rpc.events.*;
	import mx.controls.Alert;
	import com.asfusion.helloworld.cairngorm.business.MessageDelegate;
	import com.asfusion.helloworld.cairngorm.event.MessageEvent;
	import com.asfusion.helloworld.cairngorm.model.HelloWorldModelLocator;
	import com.asfusion.helloworld.cairngorm.vo.Message;
	
	public class GetMessageCommand implements ICommand, IResponder
	{
	  	public function GetMessageCommand()
		{	 
		}
	
		public function execute( event:CairngormEvent ):void {
			   		
			var delegate:MessageDelegate = new MessageDelegate(this);
			delegate.getMessage((event as MessageEvent).name);
		}
	
		public function result( event : Object ):void {				

			var model:HelloWorldModelLocator = HelloWorldModelLocator.getInstance();
			//store the message in the model locator
			model.message = event.result as Message;
			
			/* I think it is best not to use these static variables to indicate current state, 
			but since this example is supposed to follow Cairngorm's methodology, I am using
			them here */
			model.viewState = HelloWorldModelLocator.SHOW_MESSAGE;
		}
	
		public function fault( event : Object ) : void
		{
			var faultEvent : FaultEvent = FaultEvent( event );
			Alert.show( "We couldn't contact the server to say Hello :(","Error" );
		}
	}

}