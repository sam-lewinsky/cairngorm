package com.asfusion.helloworld.cairngorm.business
{
	import mx.rpc.IResponder;
	import com.adobe.cairngorm.business.ServiceLocator;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.AbstractOperation;

	public class MessageDelegate
	{
		public function MessageDelegate( responder : IResponder )
		{		
			this.service = ServiceLocator.getInstance().getRemoteObject( "helloWorldService" );
			this.responder = responder;
		}
		
		public function getMessage(name:String) : void
		{			
			var call : Object = service.sayHello(name);
			call.addResponder( responder );
		}
	
		private var responder : IResponder;
		private var service : Object;
	}

}