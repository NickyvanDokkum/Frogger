package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.events.Event;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Car  extends Sprite
	{
		private var artCar:Bitmap;
		private var speed:Number;
		
		[Embed(source = "../pics/car1.png")]
		private var Car1:Class;
		[Embed(source = "../pics/car2.png")]
		private var Car2:Class;
		[Embed(source = "../pics/car3.png")]
		private var Car3:Class;
		[Embed(source = "../pics/car4.png")]
		private var Car4:Class;
		[Embed(source = "../pics/car5.png")]
		private var Car5:Class;
		
		private var art:int;
		public function Car (a:int )
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
			art = a
			
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, updateFunction);
			switch(art)
			{
				case 1:
					artCar = new Car1();
					artCar.x = stage.stageWidth + artCar.width;
					artCar.y = stage.stageHeight / 14 * 13;
					artCar.rotation = 180;
					if (Game.lvl == 1) {
						speed = -2;
					}
					else {
						speed = -10;
					}
				break;
				case 2:
					artCar = new Car2();
					artCar.x = 0 - artCar.width;
					artCar.y = stage.stageHeight / 14 * 11;
					if (Game.lvl == 1) {
						speed = 2.3;
					}
					else {
						speed = 10;
					}
				break;
				case 3:
					artCar = new Car3();
					artCar.x = stage.stageWidth + artCar.width;
					artCar.y = stage.stageHeight / 14 * 10;
					if (Game.lvl == 1) {
						speed = -3.5;
					}
					else {
						speed = -10;
					}
				break;
				case 4:
					artCar = new Car4();
					artCar.x = 0 - artCar.width;
					artCar.y = stage.stageHeight / 14 * 9;
					
					if (Game.lvl == 1) {
						speed = 2.8;
					}
					else {
						speed = 10;
					}
				break;
				case 5:
					artCar = new Car5();
					artCar.x = stage.stageWidth + artCar.width;
					artCar.y = stage.stageHeight / 14 * 8;
					//artCar.rotation = 180;
					if (Game.lvl == 1) {
						speed = -3.8;
					}
					else {
						speed = -10;
					}
				break;
			}
			artCar.scaleX = 3;
			artCar.scaleY = 3;
			addChild(artCar);
		}
		private function updateFunction(e:Event):void
		{
			artCar.x += speed;
			if (artCar.x < 0 -artCar.width) {
				
				artCar.x = stage.stageWidth + artCar.width;
			}
			else if (artCar.x > stage.stageWidth + artCar.width) {
				artCar.x = 0 -artCar.width;
			}
		}
	}
}