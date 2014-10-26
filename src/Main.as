package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Main extends Sprite 
	{
		public var _game:Game;
		public static var main: Main;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			main = this;
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_game = new Game;
		}
		
	}
	
}