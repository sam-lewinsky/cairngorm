package com.asfusion.helloworld.cairngorm.model
{
   
   import com.adobe.cairngorm.model.ModelLocator;
   import com.asfusion.helloworld.cairngorm.vo.Message;
   
   [Bindable]
   public class HelloWorldModelLocator implements com.adobe.cairngorm.model.ModelLocator
   {
      private static var modelLocator : HelloWorldModelLocator;
      
      public var message:Message;
      public static var NO_MESSAGE:uint = 0;
      public static var SHOW_MESSAGE:uint = 1;
      
      //default state is no message is showing up
      public var viewState:uint = NO_MESSAGE;
      
      public static function getInstance() : HelloWorldModelLocator 
      {
      	if ( modelLocator == null )
      	{
      		modelLocator = new HelloWorldModelLocator();
      	}
      		
      	return modelLocator;
      }
      
      public function HelloWorldModelLocator() 
      {	
         if ( modelLocator != null )
         {
         	throw new Error( "Only one HelloWorldModelLocator instance should be instantiated" );	
         }
      }
   
   }

}
